using PointBlank.Core;
using PointBlank.Auth.Network.ServerPacket;
using System;
using PointBlank.Auth.Data.Model;
using PointBlank.Core.Managers;
using PointBlank.Core.Models.Account;
using System.Collections.Generic;

namespace PointBlank.Auth.Network.ClientPacket
{
    public class PROTOCOL_BASE_GET_SYSTEM_INFO_REQ : ReceivePacket
    {
        public PROTOCOL_BASE_GET_SYSTEM_INFO_REQ(AuthClient lc, byte[] buff)
        {
            makeme(lc, buff);
        }

        public override void read()
        {
            readC();
        }

        public override void run()
        {
            try
            {
                Account player = _client._player;
                _client.SendPacket(new PROTOCOL_BASE_NOTICE_ACK());
                _client.SendPacket(new PROTOCOL_BASE_URL_LIST_ACK());
                _client.SendPacket(new PROTOCOL_BASE_BOOSTEVENT_INFO_ACK());
                _client.SendPacket(new PROTOCOL_BASE_STEPUP_MODE_INFO_ACK());
                _client.SendPacket(new PROTOCOL_BASE_CHANNELTYPE_CONDITION_ACK());
                _client.SendPacket(new PROTOCOL_BASE_GET_SYSTEM_INFO_ACK());
                if (player == null || !AuthManager.Config.GiftSystem)
                {
                    return;
                }
                List<Message> gifts = MessageManager.getGifts(player.player_id);
                if (gifts.Count > 0)
                {
                    MessageManager.RecicleMessages(player.player_id, gifts);
                    if (gifts.Count > 0)
                    {
                        _client.SendPacket(new PROTOCOL_BASE_USER_GIFTLIST_ACK(0, gifts)); // Not Fix
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.warning(ex.ToString());
            }
        }
    }
}