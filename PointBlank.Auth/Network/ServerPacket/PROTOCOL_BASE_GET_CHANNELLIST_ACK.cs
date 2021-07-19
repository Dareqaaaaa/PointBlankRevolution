using PointBlank.Auth.Data.Configs;
using PointBlank.Core.Network;
using PointBlank.Auth.Data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PointBlank.Battle;
using System.ComponentModel.Composition;

namespace PointBlank.Auth.Network.ServerPacket
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
                writeH((ushort)Channel._players);
            }
            writeH((ushort)AuthConfig.maxChannelPlayers);
            writeC((byte)Channels.Count);
        }
    }
}
