using PointBlank.Core;
using PointBlank.Core.Managers;
using PointBlank.Core.Managers.Events;
using PointBlank.Core.Managers.Server;
using PointBlank.Core.Network;
using PointBlank.Core.Xml;
using System;
using System.Reflection;
using PointBlank.Auth.Data.Configs;
using PointBlank.Auth.Data.Sync;
using PointBlank.Auth.Data.Xml;
using System.Diagnostics;

namespace PointBlank.Auth
{
    public class Programm
    {
        private static void Main(string[] args)
        {
            string Date = ComDiv.GetLinkerTime(Assembly.GetExecutingAssembly(), null).ToString("dd/MM/yyyy HH:mm");
            Console.Title = "Auth";
            Logger.StartedFor = "Auth";
            Logger.checkDirectorys();
            Console.Clear();
            Logger.LogYaz(@"____________    ________     ________________", ConsoleColor.Cyan);
            Logger.LogYaz(@"___  ____/_ |  / /_  __ \    ___  __ \__  __ )", ConsoleColor.Cyan);
            Logger.LogYaz(@"__  __/  __ | / /_  / / /    __  /_/ /_  __  |", ConsoleColor.Cyan);
            Logger.LogYaz(@"_  /___  __ |/ / / /_/ /     _  ____/_  /_/ /", ConsoleColor.Cyan);
            Logger.LogYaz(@"/_____/  _____/  \____/      /_/     /_____/", ConsoleColor.Cyan);
            Console.WriteLine("");
            AuthConfig.Load();
            ServerConfigSyncer.GenerateConfig(AuthConfig.configId);
            EventLoader.LoadAll();
            BasicInventoryXml.Load();
            ServersXml.Load();
            ChannelsXml.Load(AuthConfig.serverId);
            MissionCardXml.LoadBasicCards(2);
            MapsXml.Load();
            ShopManager.Load(1);
            ShopManager.Load(2);
            RankXml.Load();
            RankXml.LoadAwards();
            CouponEffectManager.LoadCouponFlags();
            QuickStartXml.Load();
            MissionsXml.Load();
            AuthSync.Start();
            bool started = AuthManager.Start();
            Logger.info("Text Encode: " + Config.EncodeText.EncodingName);
            Logger.info("Mode: " + (AuthConfig.isTestMode ? "Test" : "Public"));
            Logger.debug(StartSuccess());
            if (started)
            {
                Auth.Update();
            }
            Process.GetCurrentProcess().WaitForExit();
        }

        private static string StartSuccess()
        {
            if (Logger.erro)
            {
                return "Startup failed.";
            }
            return "Active Server. (" + DateTime.Now.ToString("dd/MM/yy HH:mm:ss") + ")";
        }
    }
}