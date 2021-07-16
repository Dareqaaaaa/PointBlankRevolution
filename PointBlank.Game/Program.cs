using PointBlank.Core;
using PointBlank.Core.Managers;
using PointBlank.Core.Managers.Events;
using PointBlank.Core.Managers.Server;
using PointBlank.Core.Network;
using PointBlank.Core.Xml;
using PointBlank.Game.Data.Xml;
using PointBlank.Game.Data.Managers;
using PointBlank.Game.Data.Sync;
using System;
using System.Diagnostics;
using System.Reflection;
using PointBlank.Core.Filters;
using PointBlank.Game.Data.Configs;
using System.Text;
using PointBlank.Game.Network.ServerPacket;
using PointBlank.Game.Data.Chat;
using PointBlank.Game.Data.Model;
using PointBlank.Core.Models.Enums;
using PointBlank.Core.Models.Room;
using PointBlank.Core.Models.Account.Players;

namespace PointBlank.Game
{
    public class Programm
    {
        public static void Main(string[] args)
        {
            string Date = ComDiv.GetLinkerTime(Assembly.GetExecutingAssembly(), null).ToString("dd/MM/yyyy HH:mm");
            Console.Title = "Game";
            Logger.StartedFor = "Game";
            Logger.checkDirectorys();
            Console.Clear();
            Logger.LogYaz(@"____________    ________     ________________", ConsoleColor.Cyan);
            Logger.LogYaz(@"___  ____/_ |  / /_  __ \    ___  __ \__  __ )", ConsoleColor.Cyan);
            Logger.LogYaz(@"__  __/  __ | / /_  / / /    __  /_/ /_  __  |", ConsoleColor.Cyan);
            Logger.LogYaz(@"_  /___  __ |/ / / /_/ /     _  ____/_  /_/ /", ConsoleColor.Cyan);
            Logger.LogYaz(@"/_____/  _____/  \____/      /_/     /_____/", ConsoleColor.Cyan);
            Console.WriteLine("");
            GameConfig.Load();
            BasicInventoryXml.Load();
            ServerConfigSyncer.GenerateConfig(GameConfig.configId);
            ServersXml.Load();
            ChannelsXml.Load(GameConfig.serverId);
            EventLoader.LoadAll();
            TitlesXml.Load();
            TitleAwardsXml.Load();
            ClanManager.Load();
            NickFilter.Load();
            MissionCardXml.LoadBasicCards(1);
            RankXml.Load();
            BattleServerXml.Load();
            RankXml.LoadAwards();
            ClanRankXml.Load();
            MissionAwardsXml.Load();
            MissionsXml.Load();
            Translation.Load();
            ShopManager.Load(1);
            MapsXml.Load();
            RandomBoxXml.LoadBoxes();
            CouponEffectManager.LoadCouponFlags();
            ICafeManager.GetList();
            GameRuleManager.getGameRules(GameConfig.ruleId);
            GameSync.Start();
            bool Started = GameManager.Start();
            Logger.info("Text Encode: " + Config.EncodeText.EncodingName);
            Logger.info("Mode: " + (GameConfig.isTestMode ? "Test" : "Public"));
            Logger.debug(StartSuccess());
            if (Started)
            {
                Game.Update();
            }
            Process.GetCurrentProcess().WaitForExit();
        }

        private static string StartSuccess()
        {
            if (Logger.erro)
            {
                return "Start failed.";
            }
            return "Active Server. (" + DateTime.Now.ToString("dd/MM/yy HH:mm:ss") + ")";
        }
    }
}