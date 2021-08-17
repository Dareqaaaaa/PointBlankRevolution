using PointBlank.Core;
using PointBlank.Core.Network;
using Microsoft.Win32.SafeHandles;
using PointBlank.Game.Data.Model;
using PointBlank.Game.Data.Utils;
using PointBlank.Game.Network;
using PointBlank.Game.Network.ClientPacket;
using PointBlank.Game.Network.ServerPacket;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Sockets;
using System.Runtime.InteropServices;
using System.Threading;
using PointBlank.Game.Data.Configs;
using System.Text;

namespace PointBlank.Game
{
    public class GameClient : IDisposable
    {
        public long player_id;
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
                player_id = 0;
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

        public GameClient(Socket client)
        {
            _client = client;
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
                Logger.warning("Connection destroyed due to no responses.");
                Close(0);
            }
            else if (GetAddress() == null)
            {
                Logger.warning("Connection destroyed due to Ip empty.");
                Close(0);
            }
            else if (GetIPAddress() == "")
            {
                Logger.warning("Connection destroyed due to Ip empty.");
                Close(0);
            }
            else */
            if (_client == null)
            {
                Logger.warning("Connection destroyed due to socket null.");
                GameManager.RemoveSocket(this);
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

        public bool isSocketConnected()
        {
            return !((_client.Poll(1000, SelectMode.SelectRead) && (_client.Available == 0)) || !_client.Connected);
        }

        public void SendCompletePacket(byte[] data)
        {
            try
            {
                if (data.Length < 4)
                {
                    return;
                }
                if (GameConfig.debugMode)
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
                Close(0);
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
                if (GameConfig.debugMode)
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
                Close(0);
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
                    if (GameConfig.debugMode)
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
            catch// (Exception ex)
            {
                Close(0);
                //Logger.error(ex.ToString());
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
            catch// (Exception ex)
            {
                //Logger.warning(ex.ToString());
                Close(0);
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
            catch// (Exception ex)
            {
                //Logger.warning(ex.ToString());
                Close(0);
            }
        }

        private class StateObject
        {
            public Socket workSocket = null;
            public const int BufferSize = 8096;
            public byte[] buffer = new byte[BufferSize];
        }

        private void OnReceiveCallback(IAsyncResult ar)
        {
            try
            {
                StateObject state = (StateObject)ar.AsyncState;
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
                    Checkout(babyBuffer, length);
                    new Thread(Read).Start();
                }
            }
            catch// (Exception ex)
            {
                //Logger.error(ex.ToString());
                Close(0);
            }
        }

        public void Checkout(byte[] Buffer, int FirstLength)
        {
            int Length = Buffer.Length;
            try
            {
                byte[] PacketEnc = new byte[Length - FirstLength - 4];
                Array.Copy(Buffer, FirstLength + 4, PacketEnc, 0, PacketEnc.Length);
                if (PacketEnc.Length == 0)
                {
                    return;
                }
                int LengthPacket = BitConverter.ToUInt16(PacketEnc, 0) & 0x7FFF;
                byte[] PacketEnc2 = new byte[LengthPacket + 2];
                Array.Copy(PacketEnc, 2, PacketEnc2, 0, PacketEnc2.Length);
                byte[] PacketGo = new byte[LengthPacket + 2];
                Array.Copy(ComDiv.Decrypt(PacketEnc2, Shift), 0, PacketGo, 0, PacketGo.Length);
                RunPacket(PacketGo, PacketEnc);
                Checkout(PacketEnc, LengthPacket);
            }
            catch
            {

            }
        }

        public void Close(int time, bool kicked = false)
        {
            try
            {
                if (!closed)
                {
                    try
                    {
                        closed = true;
                        GameManager.RemoveSocket(this);
                        Account p = _player;
                        if (player_id > 0 && p != null)
                        {
                            Channel ch = p.getChannel();
                            Room room = p._room;
                            Match match = p._match;
                            p.setOnlineStatus(false);
                            if (room != null)
                            {
                                room.RemovePlayer(p, false, kicked ? 1 : 0);
                            }
                            if (match != null)
                            {
                                match.RemovePlayer(p);
                            }
                            if (ch != null)
                            {
                                ch.RemovePlayer(p);
                            }
                            p._status.ResetData(player_id);

                            AllUtils.syncPlayerToFriends(p, false);
                            AllUtils.syncPlayerToClanMembers(p);

                            p.SimpleClear();
                            p.updateCacheInfo();
                            _player = null;
                        }
                        player_id = 0;
                    }
                    catch (Exception ex)
                    {
                        Logger.warning("PlayerId: " + player_id + "\n" + ex.ToString());
                    }
                }
                if (_client != null)
                {
                    _client.Close(time);
                }
                Dispose();
            }
            catch (Exception ex)
            {
                Logger.error("Close: " + ex.ToString());
            }
        }

        private void FirstPacketCheck(ushort packetId)
        {
            if (firstPacketId == 0)
            {
                firstPacketId = packetId;
                if (packetId != 538 && packetId != 517)
                {
                    Close(0, false);
                    Logger.warning("Connection destroyed due to unknown first packet. [" + packetId + "]");
                }
            }
        }

        private void RunPacket(byte[] buff, byte[] simple)
        {
            ushort Opcode = BitConverter.ToUInt16(buff, 0);
            FirstPacketCheck(Opcode);
            if (closed)
            {
                return;
            }

            ReceivePacket packet = null;
            switch (Opcode)
            {
                case 515:
                    packet = new PROTOCOL_BASE_LOGOUT_REQ(this, buff); break;
                case 517:
                    packet = new PROTOCOL_BASE_PACKET_EMPTY_REQ(this, buff); break;
                case 520:
                    packet = new PROTOCOL_BASE_GAMEGUARD_REQ(this, buff); break;
                case 530:
                    packet = new PROTOCOL_BASE_OPTION_SAVE_REQ(this, buff); break;
                case 534:
                    packet = new PROTOCOL_BASE_CREATE_NICK_REQ(this, buff); break;
                case 536:
                    packet = new PROTOCOL_BASE_USER_LEAVE_REQ(this, buff); break;
                case 538:
                    packet = new PROTOCOL_BASE_USER_ENTER_REQ(this, buff); break;
                case 540:
                    packet = new PROTOCOL_BASE_GET_CHANNELLIST_REQ(this, buff); break;
                case 542:
                    packet = new PROTOCOL_BASE_SELECT_CHANNEL_REQ(this, buff); break;
                case 544:
                    packet = new PROTOCOL_BASE_ATTENDANCE_REQ(this, buff); break;
                case 546:
                    packet = new PROTOCOL_BASE_ATTENDANCE_CLEAR_ITEM_REQ(this, buff); break;
                case 558:
                    packet = new PROTOCOL_BASE_GET_RECORD_INFO_DB_REQ(this, buff); break;
                case 568:
                    packet = new PROTOCOL_BASE_QUEST_ACTIVE_IDX_CHANGE_REQ(this, buff); break;
                case 572:
                    packet = new PROTOCOL_BASE_QUEST_BUY_CARD_SET_REQ(this, buff); break;
                case 574:
                    packet = new PROTOCOL_BASE_QUEST_DELETE_CARD_SET_REQ(this, buff); break;
                case 584:
                    packet = new PROTOCOL_BASE_USER_TITLE_CHANGE_REQ(this, buff); break;
                case 586:
                    packet = new PROTOCOL_BASE_USER_TITLE_EQUIP_REQ(this, buff); break;
                case 588:
                    packet = new PROTOCOL_BASE_USER_TITLE_RELEASE_REQ(this, buff); break;
                case 592:
                    packet = new PROTOCOL_BASE_CHATTING_REQ(this, buff); break;
                case 600:
                    packet = new PROTOCOL_BASE_MISSION_SUCCESS_REQ(this, buff); break;
                case 633:
                    packet = new PROTOCOL_BASE_GET_USER_BASIC_INFO_REQ(this, buff); break;
                case 622:
                    packet = new PROTOCOL_BASE_DAILY_RECORD_REQ(this, buff); break;
                case 672:
                    packet = new PROTOCOL_BASE_PACKET_EMPTY_REQ(this, buff); break;
                case 685:
                    packet = new PROTOCOL_BASE_PACKET_EMPTY_REQ(this, buff); break;
                case 787:
                    packet = new PROTOCOL_AUTH_FRIEND_INVITED_REQUEST_REQ(this, buff); break;
                case 792:
                    packet = new PROTOCOL_AUTH_FRIEND_ACCEPT_REQ(this, buff); break;
                case 794:
                    packet = new PROTOCOL_AUTH_FRIEND_INVITED_REQ(this, buff); break;
                case 796:
                    packet = new PROTOCOL_AUTH_FRIEND_DELETE_REQ(this, buff); break;
                case 802:
                    packet = new PROTOCOL_AUTH_RECV_WHISPER_REQ(this, buff); break;
                case 804:
                    packet = new PROTOCOL_AUTH_SEND_WHISPER_REQ(this, buff); break;
                case 809:
                    packet = new PROTOCOL_AUTH_FIND_USER_REQ(this, buff); break;
                case 929:
                    packet = new PROTOCOL_MESSENGER_NOTE_SEND_REQ(this, buff); break;
                case 931:
                    packet = new PROTOCOL_MESSENGER_NOTE_RECEIVE_REQ(this, buff); break;
                case 934:
                    packet = new PROTOCOL_MESSENGER_NOTE_CHECK_READED_REQ(this, buff); break;
                case 936:
                    packet = new PROTOCOL_MESSENGER_NOTE_DELETE_REQ(this, buff); break;
                case 1025:
                    packet = new PROTOCOL_SHOP_ENTER_REQ(this, buff); break;
                case 1027:
                    packet = new PROTOCOL_SHOP_LEAVE_REQ(this, buff); break;
                case 1029:
                    packet = new PROTOCOL_SHOP_GET_SAILLIST_REQ(this, buff); break;
                case 1041:
                    packet = new PROTOCOL_AUTH_SHOP_GET_GIFTLIST_REQ(this, buff); break;
                case 1043:
                    packet = new PROTOCOL_AUTH_SHOP_GOODS_BUY_REQ(this, buff); break;
                case 1047:
                    packet = new PROTOCOL_AUTH_SHOP_ITEM_AUTH_REQ(this, buff); break;
                case 1049:
                    packet = new PROTOCOL_INVENTORY_USE_ITEM_REQ(this, buff); break;
                case 1053:
                    packet = new PROTOCOL_AUTH_SHOP_AUTH_GIFT_REQ(this, buff); break;
                case 1055:
                    packet = new PROTOCOL_AUTH_SHOP_DELETE_ITEM_REQ(this, buff); break;
                case 1057:
                    packet = new PROTOCOL_AUTH_GET_POINT_CASH_REQ(this, buff); break;
                case 1061:
                    packet = new PROTOCOL_AUTH_USE_ITEM_CHECK_NICK_REQ(this, buff); break;
                case 1076:
                    packet = new PROTOCOL_SHOP_REPAIR_REQ(this, buff); break;
                case 1084:
                    packet = new PROTOCOL_AUTH_SHOP_USE_GIFTCOUPON_REQ(this, buff); break;
                case 1087:
                    packet = new PROTOCOL_AUTH_SHOP_ITEM_CHANGE_DATA_REQ(this, buff); break;
                case 1793:
                    packet = new PROTOCOL_CS_CLIENT_ENTER_REQ(this, buff); break;
                case 1795:
                    packet = new PROTOCOL_CS_CLIENT_LEAVE_REQ(this, buff); break;
                case 1797:
                    packet = new PROTOCOL_CS_CLIENT_CLAN_LIST_REQ(this, buff); break;
                case 1799:
                    packet = new PROTOCOL_CS_CLIENT_CLAN_CONTEXT_REQ(this, buff); break;
                case 1824:
                    packet = new PROTOCOL_CS_DETAIL_INFO_REQ(this, buff); break;
                case 1826:
                    packet = new PROTOCOL_CS_MEMBER_CONTEXT_REQ(this, buff); break;
                case 1828:
                    packet = new PROTOCOL_CS_MEMBER_LIST_REQ(this, buff); break;
                case 1830:
                    packet = new PROTOCOL_CS_CREATE_CLAN_REQ(this, buff); break;
                case 1832:
                    packet = new PROTOCOL_CS_CLOSE_CLAN_REQ(this, buff); break;
                case 1834:
                    packet = new PROTOCOL_CS_CHECK_JOIN_AUTHORITY_ERQ(this, buff); break;
                case 1836:
                    packet = new PROTOCOL_CS_JOIN_REQUEST_REQ(this, buff); break;
                case 1838:
                    packet = new PROTOCOL_CS_CANCEL_REQUEST_REQ(this, buff); break;
                case 1840:
                    packet = new PROTOCOL_CS_REQUEST_CONTEXT_REQ(this, buff); break;
                case 1842:
                    packet = new PROTOCOL_CS_REQUEST_LIST_REQ(this, buff); break;
                case 1844:
                    packet = new PROTOCOL_CS_REQUEST_INFO_REQ(this, buff); break;
                case 1846:
                    packet = new PROTOCOL_CS_ACCEPT_REQUEST_REQ(this, buff); break;
                case 1849:
                    packet = new PROTOCOL_CS_DENIAL_REQUEST_REQ(this, buff); break;
                case 1852:
                    packet = new PROTOCOL_CS_SECESSION_CLAN_REQ(this, buff); break;
                case 1854:
                    packet = new PROTOCOL_CS_DEPORTATION_REQ(this, buff); break;
                case 1857:
                    packet = new PROTOCOL_CS_COMMISSION_MASTER_REQ(this, buff); break;
                case 1860:
                    packet = new PROTOCOL_CS_COMMISSION_STAFF_REQ(this, buff); break;
                case 1863:
                    packet = new PROTOCOL_CS_COMMISSION_REGULAR_REQ(this, buff); break;
                case 1878:
                    packet = new PROTOCOL_CS_CHATTING_REQ(this, buff); break;
                case 1880:
                    packet = new PROTOCOL_CS_CHECK_MARK_REQ(this, buff); break;
                case 1882:
                    packet = new PROTOCOL_CS_REPLACE_NOTICE_REQ(this, buff); break;
                case 1884:
                    packet = new PROTOCOL_CS_REPLACE_INTRO_REQ(this, buff); break;
                case 1892:
                    packet = new PROTOCOL_CS_REPLACE_MANAGEMENT_REQ(this, buff); break;
                case 1901:
                    packet = new PROTOCOL_CS_ROOM_INVITED_REQ(this, buff); break;
                case 1910:
                    packet = new PROTOCOL_CS_PAGE_CHATTING_REQ(this, buff); break;
                case 1912:
                    packet = new PROTOCOL_CS_INVITE_REQ(this, buff); break;
                case 1914:
                    packet = new PROTOCOL_CS_INVITE_ACCEPT_REQ(this, buff); break;
                case 1916:
                    packet = new PROTOCOL_CS_NOTE_REQ(this, buff); break;
                case 1936:
                    packet = new PROTOCOL_CS_CREATE_CLAN_CONDITION_REQ(this, buff); break;
                case 1938:
                    packet = new PROTOCOL_CS_CHECK_DUPLICATE_REQ(this, buff); break;
                case 1946:
                    packet = new PROTOCOL_CS_CLAN_LIST_DETAIL_INFO_REQ(this, buff); break;
                case 1954:
                    packet = new PROTOCOL_CS_CLAN_MATCH_RESULT_CONTEXT_REQ(this, buff); break;
                case 1956:
                    packet = new PROTOCOL_CS_CLAN_MATCH_RESULT_LIST_REQ(this, buff); break;
                case 3073:
                    packet = new PROTOCOL_LOBBY_ENTER_REQ(this, buff); break;
                case 3075:
                    packet = new PROTOCOL_LOBBY_LEAVE_REQ(this, buff); break;
                case 3077:
                    packet = new PROTOCOL_LOBBY_GET_ROOMLIST_REQ(this, buff); break;
                case 3083:
                    packet = new PROTOCOL_LOBBY_GET_ROOMINFOADD_REQ(this, buff); break;
                case 3093:
                    packet = new PROTOCOL_LOBBY_NEW_VIEW_USER_ITEM_REQ(this, buff); break;
                case 3095:
                    packet = new PROTOCOL_BASE_SELECT_AGE_REQ(this, buff); break;
                case 3329:
                    packet = new PROTOCOL_INVENTORY_ENTER_REQ(this, buff); break;
                case 3331:
                    packet = new PROTOCOL_INVENTORY_LEAVE_REQ(this, buff); break;
                case 3841:
                    packet = new PROTOCOL_ROOM_CREATE_REQ(this, buff); break;
                case 3843:
                    packet = new PROTOCOL_ROOM_JOIN_REQ(this, buff); break;
                case 3858:
                    packet = new PROTOCOL_ROOM_CHANGE_PASSWD_REQ(this, buff); break;
                case 3860:
                    packet = new PROTOCOL_ROOM_CHANGE_SLOT_REQ(this, buff); break;
                case 3865:
                    packet = new PROTOCOL_ROOM_PERSONAL_TEAM_CHANGE_REQ(this, buff); break;
                case 3869:
                    packet = new PROTOCOL_ROOM_INVITE_LOBBY_USER_LIST_REQ(this, buff); break;
                case 3875:
                    packet = new PROTOCOL_ROOM_REQUEST_MAIN_REQ(this, buff); break;
                case 3877:
                    packet = new PROTOCOL_ROOM_REQUEST_MAIN_CHANGE_REQ(this, buff); break;
                case 3879:
                    packet = new PROTOCOL_ROOM_REQUEST_MAIN_CHANGE_WHO_REQ(this, buff); break;
                case 3881:
                    packet = new PROTOCOL_ROOM_CHECK_MAIN_REQ(this, buff); break;
                case 3883:
                    packet = new PROTOCOL_ROOM_TOTAL_TEAM_CHANGE_REQ(this, buff); break;
                case 3893:
                    packet = new PROTOCOL_ROOM_CHANGE_ROOMINFO_REQ(this, buff); break;
                case 3911:
                    packet = new PROTOCOL_ROOM_LOADING_START_REQ(this, buff); break;
                case 3925:
                    packet = new PROTOCOL_ROOM_INFO_ENTER_REQ(this, buff); break;
                case 3927:
                    packet = new PROTOCOL_ROOM_INFO_LEAVE_REQ(this, buff); break;
                case 3929:
                    packet = new PROTOCOL_ROOM_GET_LOBBY_USER_LIST_REQ(this, buff); break;
                case 3931:
                    packet = new PROTOCOL_ROOM_CHANGE_COSTUME_REQ(this, buff); break;
                case 3933:
                    packet = new PROTOCOL_ROOM_SELECT_SLOT_CHANGE_REQ(this, buff); break;
                case 4097:
                    packet = new PROTOCOL_BATTLE_HOLE_CHECK_REQ(this, buff); break;
                case 4099:
                    packet = new PROTOCOL_BATTLE_READYBATTLE_REQ(this, buff); break;
                case 4105:
                    packet = new PROTOCOL_BATTLE_PRESTARTBATTLE_REQ(this, buff); break;
                case 4107:
                    packet = new PROTOCOL_BATTLE_STARTBATTLE_REQ(this, buff); break;
                case 4109:
                    packet = new PROTOCOL_BATTLE_GIVEUPBATTLE_REQ(this, buff); break;
                case 4111:
                    packet = new PROTOCOL_BATTLE_DEATH_REQ(this, buff); break;
                case 4113:
                    packet = new PROTOCOL_BATTLE_RESPAWN_REQ(this, buff); break;
                case 4119:
                    packet = new PROTOCOL_BATTLE_TIMEOUTCLIENT_REQ(this, buff); break;
                case 4121:
                    packet = new PROTOCOL_BASE_PACKET_EMPTY_REQ(this, buff); break;
                case 4122:
                    packet = new PROTOCOL_BATTLE_SENDPING_REQ(this, buff); break;
                case 4132:
                    packet = new PROTOCOL_BATTLE_MISSION_BOMB_INSTALL_REQ(this, buff); break;
                case 4134:
                    packet = new PROTOCOL_BATTLE_MISSION_BOMB_UNINSTALL_REQ(this, buff); break;
                case 4142:
                    packet = new PROTOCOL_BATTLE_MISSION_GENERATOR_INFO_REQ(this, buff); break;
                case 4144:
                    packet = new PROTOCOL_BATTLE_TIMERSYNC_REQ(this, buff); break;
                case 4148:
                    packet = new PROTOCOL_BATTLE_CHANGE_DIFFICULTY_LEVEL_REQ(this, buff); break;
                case 4150:
                    packet = new PROTOCOL_BATTLE_RESPAWN_FOR_AI_REQ(this, buff); break;
                case 4156:
                    packet = new PROTOCOL_BATTLE_MISSION_DEFENCE_INFO_REQ(this, buff); break;
                case 4158:
                    packet = new PROTOCOL_BATTLE_MISSION_TOUCHDOWN_COUNT_REQ(this, buff); break;
                case 4164:
                    packet = new PROTOCOL_BATTLE_MISSION_TUTORIAL_ROUND_END_REQ(this, buff); break;
                case 4238:
                    packet = new PROTOCOL_BATTLE_NEW_JOIN_ROOM_SCORE_REQ(this, buff); break;
                case 4252:
                    packet = new PROTOCOL_BATTLE_USER_SOPETYPE_REQ(this, buff); break;
                case 5377:
                    packet = new PROTOCOL_LOBBY_QUICKJOIN_ROOM_REQ(this, buff); break;
                case 6145:
                    packet = new PROTOCOL_CHAR_CREATE_CHARA_REQ(this, buff); break;
                case 6149:
                    packet = new PROTOCOL_CHAR_CHANGE_EQUIP_REQ(this, buff); break;
                case 6151:
                    packet = new PROTOCOL_CHAR_DELETE_CHARA_REQ(this, buff); break;
                case 6963:
                    packet = new PROTOCOL_CLAN_WAR_RESULT_REQ(this, buff); break;

                
                case 6914:
                    packet = new PROTOCOL_CLAN_WAR_MATCH_TEAM_COUNT_REQ(this, buff); break;
                case 1544:
                    packet = new PROTOCOL_CLAN_WAR_MATCH_TEAM_LIST_REQ(this, buff); break;
                case 1546:
                    packet = new PROTOCOL_CLAN_WAR_CREATE_TEAM_REQ(this, buff); break;
                case 1548:
                    packet = new PROTOCOL_CLAN_WAR_JOIN_TEAM_REQ(this, buff); break;
                case 1550:
                    packet = new PROTOCOL_CLAN_WAR_LEAVE_TEAM_REQ(this, buff); break;
                case 1553:
                    packet = new PROTOCOL_CLAN_WAR_MATCH_PROPOSE_REQ(this, buff); break;
                case 1558:
                    packet = new PROTOCOL_CLAN_WAR_INVITE_ACCEPT_REQ(this, buff); break;
                case 1565:
                    packet = new PROTOCOL_CLAN_WAR_CREATE_ROOM_REQ(this, buff); break;
                case 1567:
                    packet = new PROTOCOL_CLAN_WAR_JOIN_ROOM_REQ(this, buff); break;
                case 1569:
                    packet = new PROTOCOL_CLAN_WAR_MATCH_TEAM_INFO_REQ(this, buff); break;
                case 1571:
                    packet = new PROTOCOL_CLAN_WAR_INVITE_MERCENARY_RECEIVER_REQ(this, buff); break;
                case 1576:
                    packet = new PROTOCOL_CLAN_WAR_TEAM_CHATTING_REQ(this, buff); break;
                case 3396:
                    packet = new PROTOCOL_BATTLE_START_KICKVOTE_REQ(this, buff); break;
                case 3400:
                    packet = new PROTOCOL_BATTLE_NOTIFY_CURRENT_KICKVOTE_REQ(this, buff); break;
                case 3910:
                    packet = new PROTOCOL_BASE_PLAYTIME_REWARD_REQ(this, buff); break;
                case 3934:
                    packet = new PROTOCOL_ROOM_GET_ACEMODE_PLAYERINFO_REQ(this, buff); break;
                case 3936:
                    packet = new PROTOCOL_BATTLE_ACE_MODE_SLOT_REQ(this, buff); break;
                default:
                    {
                        Logger.warning("Opcode not found: " + Opcode);
                        Console.WriteLine(ConvertToHex(buff));
                        break;
                    }
            }
            if (packet != null)
            {
                if (GameConfig.debugMode)
                {
                    Logger.debug("Opcode: [" + Opcode + "]");
                }
                new Thread(packet.run).Start();
            }
        }

        private string ConvertToHex(byte[] buffer)
        {
            var sb = new StringBuilder();
            int length = buffer.Length;
            int counter = 0;

            sb.AppendLine("|--------------------------------------------------------------------------|");
            sb.AppendLine("|       00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F                    |");
            sb.AppendLine("|--------------------------------------------------------------------------|");

            for (int i = 0; i < length; i++)
            {
                if (counter % 16 == 0)
                {
                    sb.Append("| " + i.ToString("X4") + ": ");
                }

                sb.Append(buffer[i].ToString("X2") + " ");
                counter++;

                if (counter == 16)
                {
                    sb.Append("   ");

                    int charpoint = i - 15;

                    for (int j = 0; j < 16; j++)
                    {
                        byte n = buffer[charpoint++];

                        if (n > 0x1f && n < 0x80)
                        {
                            sb.Append((char)n);
                        }
                        else
                        {
                            sb.Append('.');
                        }
                    }

                    sb.Append("\n");
                    counter = 0;
                }
            }

            int rest = length % 16;

            if (rest > 0)
            {
                for (int i = 0; i < 17 - rest; i++)
                {
                    sb.Append("   ");
                }

                int charpoint = length - rest;

                for (int j = 0; j < rest; j++)
                {
                    byte n = buffer[charpoint++];

                    if (n > 0x1f && n < 0x80)
                    {
                        sb.Append((char)n);
                    }
                    else
                    {
                        sb.Append('.');
                    }
                }

                sb.Append("\n");
            }

            sb.AppendLine("|--------------------------------------------------------------------------|");

            return sb.ToString().TrimEnd('\n');
        }
    }
}