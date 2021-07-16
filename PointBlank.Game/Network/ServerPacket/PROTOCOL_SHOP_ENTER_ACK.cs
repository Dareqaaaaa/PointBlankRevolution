using PointBlank.Core.Network;
using System;

namespace PointBlank.Game.Network.ServerPacket
{
    public class PROTOCOL_SHOP_ENTER_ACK : SendPacket
    {
        public PROTOCOL_SHOP_ENTER_ACK()
        {

        }

        public override void write()
        {
            writeH(1026);
            writeC(0);
            writeD(uint.Parse(DateTime.Now.ToString("yyMMddHHmm")));
        }
    }
}