using PointBlank.Core;
using PointBlank.Core.Models.Enums;
using PointBlank.Core.Network;
using PointBlank.Game.Data.Model;
using PointBlank.Game.Network.ServerPacket;
using System;

namespace PointBlank.Game.Network.ClientPacket
{
    public class PROTOCOL_ROOM_CREATE_REQ : ReceivePacket
    {
        private uint erro;
        private Room room;
        private Account p;

        public PROTOCOL_ROOM_CREATE_REQ(GameClient client, byte[] data)
        {
            makeme(client, data);
        }

        public override void read()
        {
            p = _client._player;
            Channel channel = p == null ? null : p.getChannel();
            try
            {
                if (p == null || channel == null || p.player_name.Length == 0 || p._room != null || p._match != null)
                {
                    erro = 0x80000000;
                    return;
                }
                lock (channel._rooms)
                {
                    for (int i = 0; i < 300; i++)
                    {
                        if (channel.getRoom(i) == null)
                        {
                            room = new Room(i, channel);
                            readD();
                            room.name = readUnicode(46);
                            room.mapId = (MapIdEnum)readC();
                            room.rule = readC();
                            room.stage = readC();
                            room.room_type = (RoomType)readC();
                            if (room.room_type == 0)
                            {
                                break;
                            }
                            readC();
                            readC();
                            room.initSlotCount(readC());
                            readC();
                            room.weaponsFlag = (RoomWeaponsFlag)readH();
                            if ((byte)room.weaponsFlag <= 47 && (byte)room.weaponsFlag > 15)
                            {
                                room.SniperMode = true;
                            }
                            else if ((byte)room.weaponsFlag <= 79 && (byte)room.weaponsFlag > 47)
                            {
                                room.ShotgunMode = true;
                            }
                            room.Flag = (RoomStageFlag)readD();
                            readC();
                            readC();
                            readC();
                            bool isBotMode = room.isBotMode();
                            if (isBotMode && room._channelType == 4)
                            {
                                erro = 0x8000107D;
                                return;
                            }
                            readUnicode(66);
                            room.killtime = readC();
                            readC();
                            readC();
                            readC();
                            room.Limit = readC();
                            room.WatchRuleFlag = readC();
                            room.BalanceType = readH();
                            if (channel._type == 4)
                            {
                                room.Limit = 1;
                                room.BalanceType = 0;
                            }
                            readB(16);
                            readB(4);
                            room.password = readS(4);
                            room.aiCount = readC();
                            room.aiLevel = readC();
                            room.aiType = readC();
                            room.addPlayer(p);
                            p.ResetPages();
                            room.SetSeed();
                            channel.AddRoom(room);
                            return;
                        }
                    }
                    erro = 0x80000000;
                }
            }
            catch (Exception ex)
            {
                Logger.error("PROTOCOL_LOBBY_CREATE_ROOM_REQ: " + ex.ToString());
                erro = 0x80000000;
            }
        }
        public override void run()
        {
            _client.SendPacket(new PROTOCOL_ROOM_CREATE_ACK(erro, room, p));
            _client.SendPacket(new PROTOCOL_LOBBY_CHATTING_ACK("Room", 0, 4, false, "ถ้าต้องการเปิดห้ามใช้ลูกซอง - พิม /NS ลงในช่องแชท"));
            _client.SendPacket(new PROTOCOL_LOBBY_CHATTING_ACK("Room", 0, 5, false, "ถ้าต้องการเปิดห้ามใช้ลูกบาเรต - พิม /NB ลงในช่องแชท"));
            _client.SendPacket(new PROTOCOL_LOBBY_CHATTING_ACK("Room", 0, 6, false, "ถ้าต้องการเปิดห้ามใช้หน้ากาก - พิม /NM ลงในช่องแชท"));
            _client.SendPacket(new PROTOCOL_LOBBY_CHATTING_ACK("Room", 0, 7, false, "ถ้าต้องการเปิดใช้งานกฎแข่ง - พิม /GR ลงในช่องแชท"));
            _client.SendPacket(new PROTOCOL_LOBBY_CHATTING_ACK("Room", 0, 8, false, "หากต้องการปิดให้พิมคำสั่งนั้นๆ อีกครั้งลงในช่องแชท"));
        }
    }
}