using PointBlank.Core.Network;
using PointBlank.Game.Data.Configs;
using PointBlank.Game.Data.Model;
using PointBlank.Game.Data.Xml;
using System.Collections.Generic;

namespace PointBlank.Game.Network.ServerPacket
{
    public class PROTOCOL_BASE_GET_CHANNELLIST_ACK : SendPacket
    {
        private List<Channel> Channels;

        public PROTOCOL_BASE_GET_CHANNELLIST_ACK(List<Channel> Channels)
        {
            this.Channels = Channels;
        }

        public override void write()
        {
            writeH(541);
            writeH(0);
            writeC(0);
            writeC((byte)Channels.Count);
            for (int i = 0; i < Channels.Count; i++)
            {
                Channel Channel = Channels[i];
                writeH((ushort)Channel._players.Count);
            }
            writeH((ushort)GameConfig.maxChannelPlayers);
            writeC((byte)Channels.Count);
        }
    }
}