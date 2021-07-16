using System.Text;

namespace PointBlank.Battle.Data.Configs
{
    public static class BattleConfig
    {
        public static string dbName, dbHost, dbUser, dbPass, hosIp, serverIp, udpVersion;
        public static int dbPort;
        public static ushort hosPort, maxDrop, syncPort;
        public static bool isTestMode, sendInfoToServ, sendFailMsg, enableLog, useMaxAmmoInDrop, useHitMarker;
        public static float plantDuration, defuseDuration;
        public static Encoding EncodeText;

        public static void Load()
        {
            ConfigFile configFile = new ConfigFile("Config/Battle.ini");
            dbHost = configFile.readString("Host", "localhost");
            dbName = configFile.readString("Name", "");
            dbUser = configFile.readString("User", "root");
            dbPass = configFile.readString("Pass", "");
            dbPort = configFile.readInt32("Port", 0);
            EncodeText = Encoding.GetEncoding(configFile.readInt32("EncodingPage", 0));
            hosIp = configFile.readString("UdpIp", "0.0.0.0");
            serverIp = configFile.readString("ServerIp", "0.0.0.0");
            hosPort = configFile.readUInt16("UdpPort", 40000);
            isTestMode = configFile.readBoolean("Test", false);
            sendInfoToServ = configFile.readBoolean("SendInfoToServer", true);
            sendFailMsg = configFile.readBoolean("SendFailMsg", true);
            enableLog = configFile.readBoolean("EnableLog", false);
            maxDrop = configFile.readUInt16("MaxDrop", 0);
            syncPort = configFile.readUInt16("SyncPort", 0);
            plantDuration = configFile.readFloat("PlantDuration", 1.0f);
            defuseDuration = configFile.readFloat("DefuseDuration", 1.0f);
            useHitMarker = configFile.readBoolean("UseHitMarker", false);
            useMaxAmmoInDrop = configFile.readBoolean("UseMaxAmmoInDrop", false);
            udpVersion = configFile.readString("UdpVersion", "0.0");
        }
    }
}