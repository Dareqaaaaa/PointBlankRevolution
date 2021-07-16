using PointBlank.Core.Models.Enums;
using PointBlank.Core.Network;

namespace PointBlank.Auth.Network.ServerPacket
{
    public class PROTOCOL_BASE_URL_LIST_ACK : SendPacket
    {
        public PROTOCOL_BASE_URL_LIST_ACK()
        {

        }

        public override void write()
        {
            string URL1 = "http://pb-abc.com/";
            string URL2 = "https://www.facebook.com/SuppakornChawruahuk";

            writeH(673);
            writeC(1);
            writeC(2);
            writeH((ushort)(URL1.Length));
            writeQ(4);
            writeText(URL1, URL1.Length);
            writeH((ushort)(URL2.Length));
            writeQ(3);
            writeText(URL2, URL2.Length);
        }
    }
}