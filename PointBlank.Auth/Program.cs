﻿using PointBlank.Core;
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
using System.Threading;

namespace PointBlank.Auth
{
    public class Programm
    {
        private static void Main(string[] args)
        {
            string Date = ComDiv.GetLinkerTime(Assembly.GetExecutingAssembly(), null).ToString("dd/MM/yyyy HH:mm");
            Logger.StartedFor = "Auth";
            Logger.checkDirectorys();
            Console.Clear();
            Logger.LogYaz(@"
 ██████╗  ██████╗ ██╗███╗   ██╗████████╗    ██████╗ ██╗      █████╗ ███╗   ██╗██╗  ██╗
 ██╔══██╗██╔═══██╗██║████╗  ██║╚══██╔══╝    ██╔══██╗██║     ██╔══██╗████╗  ██║██║ ██╔╝
 ██████╔╝██║   ██║██║██╔██╗ ██║   ██║       ██████╔╝██║     ███████║██╔██╗ ██║█████╔╝ 
 ██╔═══╝ ██║   ██║██║██║╚██╗██║   ██║       ██╔══██╗██║     ██╔══██║██║╚██╗██║██╔═██╗ 
 ██║     ╚██████╔╝██║██║ ╚████║   ██║       ██████╔╝███████╗██║  ██║██║ ╚████║██║  ██╗
 ╚═╝      ╚═════╝ ╚═╝╚═╝  ╚═══╝   ╚═╝       ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝
", ConsoleColor.Cyan);
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
            PermissionManager.Load();
            AuthSync.Start();

            if (Logger.erro)
            {
                Logger.error("Check your configuration.");
                Thread.Sleep(5000);
                Environment.Exit(0);
            }

            if (AuthManager.Start())
                Auth.Update();

            Process.GetCurrentProcess().WaitForExit();
        }
    }
}