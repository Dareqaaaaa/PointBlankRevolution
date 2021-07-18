using PointBlank.Battle.Data.Configs;
using PointBlank.Battle.Data.Sync;
using PointBlank.Battle.Data.Xml;
using PointBlank.Battle.Network;
using System;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Threading.Tasks;

namespace PointBlank.Battle
{
    internal class Program
    {
        protected static void Main(string[] args)
        {
            BattleConfig.Load();
            Logger.checkDirectory();
            Console.Clear();
            Logger.LogYaz(@"
 ██████╗  ██████╗ ██╗███╗   ██╗████████╗    ██████╗ ██╗      █████╗ ███╗   ██╗██╗  ██╗
 ██╔══██╗██╔═══██╗██║████╗  ██║╚══██╔══╝    ██╔══██╗██║     ██╔══██╗████╗  ██║██║ ██╔╝
 ██████╔╝██║   ██║██║██╔██╗ ██║   ██║       ██████╔╝██║     ███████║██╔██╗ ██║█████╔╝ 
 ██╔═══╝ ██║   ██║██║██║╚██╗██║   ██║       ██╔══██╗██║     ██╔══██║██║╚██╗██║██╔═██╗ 
 ██║     ╚██████╔╝██║██║ ╚████║   ██║       ██████╔╝███████╗██║  ██║██║ ╚████║██║  ██╗
 ╚═╝      ╚═════╝ ╚═╝╚═╝  ╚═══╝   ╚═╝       ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝
", ConsoleColor.Cyan);
            MapXml.Load();
            CharaXml.Load();
            MeleeExceptionsXml.Load();
            ServersXml.Load();
            BattleSync.Start();
            BattleManager.Connect();

            Update();

            Process.GetCurrentProcess().WaitForExit();
        }

        protected static async void Update()
        {
            while (true)
            {
                Console.Title = "Point Blank - Battle [Used RAM: " + (GC.GetTotalMemory(true) / 1024) + " KB]";

                await Task.Delay(5000);
            }
        }
    }
}