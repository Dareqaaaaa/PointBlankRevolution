using PointBlank.Core;
using PointBlank.Core.Network;
using Microsoft.Win32.SafeHandles;
using PointBlank.Auth.Data.Configs;
using PointBlank.Auth.Data.Model;
using PointBlank.Auth.Data.Sync;
using PointBlank.Auth.Data.Sync.Server;
using PointBlank.Auth.Network;
using PointBlank.Auth.Network.ClientPacket;
using PointBlank.Auth.Network.ServerPacket;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Sockets;
using System.Runtime.InteropServices;
using System.Threading;

namespace PointBlank.Auth
{
    public class AuthClient : IDisposable
    {
        public Socket _client;
        public Account _player;
        public DateTime ConnectDate;
        public uint SessionId;
        public ushort SessionSeed;
        public int Shift, firstPacketId;
        private byte[] lastCompleteBuffer;
        private bool disposed = false, closed = false;
        private SafeHandle handle = new SafeFileHandle(IntPtr.Zero, true);

        public void Dispose()
        {
            try
            {
                Dispose(true);
                GC.SuppressFinalize(this);
            }
            catch
            {

            }
        }

        protected virtual void Dispose(bool disposing)
        {
            try
            {
                if (disposed)
                {
                    return;
                }
                _player = null;
                if (_client != null)
                {
                    _client.Dispose();
                    _client = null;
                }
                if (disposing)
                {
                    handle.Dispose();
                }
                disposed = true;
            }
            catch
            {

            }
        }

        public AuthClient(Socket client)
        {
            _client = client;
            _client.NoDelay = true;
            SessionSeed = IdFactory.GetInstance().NextSeed();
        }

        public void Start()
        {
            Shift = (int)(SessionId % 7 + 1);
            new Thread(Connect).Start();
            new Thread(Read).Start();
            //new Thread(ConnectionCheck).Start();
            ConnectDate = DateTime.Now;
        }

        private void ConnectionCheck()
        {
            Thread.Sleep(10000);
            /*if (_client != null && firstPacketId == 0)
            {
                Close(0, true);
                Logger.warning("Connection destroyed due to no responses.");
            }*/
            if (_client == null)
            {
                Logger.warning("Connection destroyed due to socket null.");
                AuthManager.RemoveSocket(this);
                Dispose();
            }
        }

        public string GetIPAddress()
        {
            try
            {
                if (_client != null && _client.RemoteEndPoint != null)
                {
                    return ((IPEndPoint)_client.RemoteEndPoint).Address.ToString();
                }
                return "";
            }
            catch
            {
                return "";
            }
        }

        public IPAddress GetAddress()
        {
            try
            {
                if (_client != null && _client.RemoteEndPoint != null)
                {
                    return ((IPEndPoint)_client.RemoteEndPoint).Address;
                }
                return null;
            }
            catch
            {
                return null;
            }
        }

        private void Connect()
        {
            SendPacket(new PROTOCOL_BASE_CONNECT_ACK(this));
        }

        public void SendCompletePacket(byte[] data)
        {
            try
            {
                if (data.Length < 4)
                {
                    return;
                }
                if (AuthConfig.debugMode)
                {
                    ushort opcode = BitConverter.ToUInt16(data, 2);
                    string debugData = "";
                    foreach (string str2 in BitConverter.ToString(data).Split('-', ',', '.', ':', '\t'))
                    {
                        debugData += " " + str2;
                    }
                    Logger.debug("Opcode: [" + opcode + "]");
                }
                _client.BeginSend(data, 0, data.Length, SocketFlags.None, new AsyncCallback(SendCallback), _client);
            }
            catch
            {
                Close(0, true);
            }
        }

        public void SendPacket(byte[] data)
        {
            try
            {
                if (data.Length < 2)
                {
                    return;
                }
                ushort size = Convert.ToUInt16(data.Length - 2);
                List<byte> list = new List<byte>(data.Length + 2);
                list.AddRange(BitConverter.GetBytes(size));
                list.AddRange(data);
                byte[] result = list.ToArray();
                if (AuthConfig.debugMode)
                {
                    ushort opcode = BitConverter.ToUInt16(data, 0);
                    string debugData = "";
                    foreach (string str2 in BitConverter.ToString(result).Split('-', ',', '.', ':', '\t'))
                    {
                        debugData += " " + str2;
                    }
                    Logger.debug("Opcode: [" + opcode + "]");
                }
                if (result.Length > 0)
                {
                    _client.BeginSend(result, 0, result.Length, SocketFlags.None, new AsyncCallback(SendCallback), _client);
                }
                list.Clear();
            }
            catch
            {
                Close(0, true);
            }
        }

        public void SendPacket(SendPacket bp)
        {
            try
            {
                using (bp)
                {
                    bp.write();
                    byte[] data = bp.mstream.ToArray();
                    if (data.Length < 2)
                    {
                        return;
                    }
                    ushort size = Convert.ToUInt16(data.Length - 2);
                    List<byte> list = new List<byte>(data.Length + 2);
                    list.AddRange(BitConverter.GetBytes(size));
                    list.AddRange(data);
                    byte[] result = list.ToArray();
                    if (AuthConfig.debugMode)
                    {
                        ushort opcode = BitConverter.ToUInt16(data, 0);
                        string debugData = "";
                        foreach (string str2 in BitConverter.ToString(result).Split('-', ',', '.', ':', '\t'))
                        {
                            debugData += " " + str2;
                        }
                        Logger.debug("Opcode: [" + opcode + "]");
                    }
                    if (result.Length > 0)
                    {
                        _client.BeginSend(result, 0, result.Length, SocketFlags.None, new AsyncCallback(SendCallback), _client);
                    }
                    bp.mstream.Close();
                    list.Clear();
                }
            }
            catch
            {
                Close(0, true);
            }
        }

        private void SendCallback(IAsyncResult ar)
        {
            try
            {
                Socket handler = (Socket)ar.AsyncState;
                if (handler != null && handler.Connected)
                {
                    handler.EndSend(ar);
                }
            }
            catch
            {
                Close(0, true);
            }
        }

        private void Read()
        {
            try
            {
                StateObject state = new StateObject();
                state.workSocket = _client;
                _client.BeginReceive(state.buffer, 0, StateObject.BufferSize, SocketFlags.None, new AsyncCallback(OnReceiveCallback), state);
            }
            catch
            {
                Close(0, true);
            }
        }

        private class StateObject
        {
            public Socket workSocket = null;
            public const int BufferSize = 8096;
            public byte[] buffer = new byte[BufferSize];
        }

        public void Close(int time, bool destroyConnection)
        {
            if (closed)
            {
                return;
            }
            try
            {
                closed = true;
                AuthManager.RemoveSocket(this);
                Account player = _player;
                if (destroyConnection)
                {
                    if (player != null)
                    {
                        player.setOnlineStatus(false);
                        if (player._status.serverId == 0)
                        {
                            SendRefresh.RefreshAccount(player, false);
                        }
                        player._status.ResetData(player.player_id);
                        player.SimpleClear();
                        player.updateCacheInfo();
                        _player = null;
                    }
                    _client.Close(time);
                    Thread.Sleep(time);
                    Dispose();
                }
                else if (player != null)
                {
                    player.SimpleClear();
                    player.updateCacheInfo();
                    _player = null;
                }
                AuthSync.UpdateGSCount(0);
            }
            catch (Exception ex)
            {
                Logger.warning("AuthClient.Close " + ex.ToString());
            }
        }

        private void OnReceiveCallback(IAsyncResult ar)
        {
            StateObject state = (StateObject)ar.AsyncState;
            try
            {
                int bytesCount = state.workSocket.EndReceive(ar);
                if (bytesCount > 0)
                {
                    byte[] babyBuffer = new byte[bytesCount];
                    Array.Copy(state.buffer, 0, babyBuffer, 0, bytesCount);

                    int length = BitConverter.ToUInt16(babyBuffer, 0) & 0x7FFF;

                    byte[] buffer = new byte[length + 2];
                    Array.Copy(babyBuffer, 2, buffer, 0, buffer.Length);

                    lastCompleteBuffer = babyBuffer;
                    byte[] decrypted = ComDiv.Decrypt(buffer, Shift);

                    RunPacket(decrypted, buffer);
                    CheckOut(babyBuffer, length);
                    new Thread(Read).Start();
                }
            }
            catch (ObjectDisposedException ex)
            {
                ex.ToString();
            }
            catch
            {
                Close(0, true);
            }
        }

        public void CheckOut(byte[] buffer, int FirstLength)
        {
            int tamanho = buffer.Length;
            try
            {
                byte[] newPacketENC = new byte[tamanho - FirstLength - 4];
                Array.Copy(buffer, FirstLength + 4, newPacketENC, 0, newPacketENC.Length);
                if (newPacketENC.Length == 0)
                {
                    return;
                }

                int lengthPK = BitConverter.ToUInt16(newPacketENC, 0) & 0x7FFF;

                byte[] newPacketENC2 = new byte[lengthPK + 2];
                Array.Copy(newPacketENC, 2, newPacketENC2, 0, newPacketENC2.Length);


                byte[] newPacketGO = new byte[lengthPK + 2];

                Array.Copy(ComDiv.Decrypt(newPacketENC2, Shift), 0, newPacketGO, 0, newPacketGO.Length);

                RunPacket(newPacketGO, newPacketENC);
                CheckOut(newPacketENC, lengthPK);
            }
            catch
            {

            }
        }

        private void FirstPacketCheck(ushort packetId)
        {
            if (firstPacketId == 0)
            {
                firstPacketId = packetId;
                if (packetId != 257 && packetId != 517)
                {
                    Logger.warning("Connection destroyed due to unknown first packet. [" + packetId + "]");
                    Close(0, true);
                }
            }
        }

        private void RunPacket(byte[] buff, byte[] simple)
        {
            ushort Opcode = BitConverter.ToUInt16(buff, 0);
            if(firstPacketId == 0)
            {

            }

            FirstPacketCheck(Opcode);
            if (closed)
            {
                return;
            }
            ReceivePacket packet = null;
            switch (Opcode)
            {
                case 257:
                    packet = new PROTOCOL_BASE_LOGIN_REQ(this, buff); break;
                case 515:
                    packet = new PROTOCOL_BASE_LOGOUT_REQ(this, buff); break;
                case 517:
                    break;
                case 520:
                    packet = new PROTOCOL_BASE_GAMEGUARD_REQ(this, buff); break;
                case 522:
                    packet = new PROTOCOL_BASE_GET_SYSTEM_INFO_REQ(this, buff); break;
                case 524:
                    packet = new PROTOCOL_BASE_GET_USER_INFO_REQ(this, buff); break;
                case 526:
                    packet = new PROTOCOL_BASE_GET_INVEN_INFO_REQ(this, buff); break;
                case 528:
                    packet = new PROTOCOL_BASE_GET_OPTION_REQ(this, buff); break;
                case 530:
                    packet = new PROTOCOL_BASE_OPTION_SAVE_REQ(this, buff); break;
                case 536:
                    packet = new PROTOCOL_BASE_USER_LEAVE_REQ(this, buff); break;
                case 540:
                    packet = new PROTOCOL_BASE_GET_CHANNELLIST_REQ(this, buff); break;
                case 666:
                    packet = new PROTOCOL_BASE_GET_MAP_INFO_REQ(this, buff); break;
                case 1057:
                    packet = new PROTOCOL_AUTH_GET_POINT_CASH_REQ(this, buff); break;
                case 5377:
                    packet = new PROTOCOL_LOBBY_QUICKJOIN_ROOM_REQ(this, buff); break;
                default:
                    {
                        Logger.error("Opcode not found: " + Opcode);
                        //Logger.unkhown_packet(BufferExtensions.GetHex(simple));
                        //Logger.unkhown_packet(BufferExtensions.GetHex(lastCompleteBuffer));
                        break;
                    }
            }
            if (packet != null)
            {
                new Thread(packet.run).Start();
            }
        }
    }
}