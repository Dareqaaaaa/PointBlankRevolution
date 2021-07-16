using PointBlank.Battle.Data.Configs;
using PointBlank.Battle.Data.Sync;
using PointBlank.Battle.Data.Xml;
using PointBlank.Battle.Network;
using System;
using System.Diagnostics;
using System.IO;
using System.Reflection;

namespace PointBlank.Battle
{
    internal class Program
    {
        protected static void Main(string[] args)
        {
            string Date = GetLinkerTime(Assembly.GetExecutingAssembly(), null).ToString("dd/MM/yyyy HH:mm");
            BattleConfig.Load();
            Logger.checkDirectory();
            Console.Clear();
            Console.Title = "Battle";
            Logger.LogYaz(@"____________    ________     ________________", ConsoleColor.Cyan);
            Logger.LogYaz(@"___  ____/_ |  / /_  __ \    ___  __ \__  __ )", ConsoleColor.Cyan);
            Logger.LogYaz(@"__  __/  __ | / /_  / / /    __  /_/ /_  __  |", ConsoleColor.Cyan);
            Logger.LogYaz(@"_  /___  __ |/ / / /_/ /     _  ____/_  /_/ /", ConsoleColor.Cyan);
            Logger.LogYaz(@"/_____/  _____/  \____/      /_/     /_____/", ConsoleColor.Cyan);
            Console.WriteLine("");
            MapXml.Load();
            CharaXml.Load();
            MeleeExceptionsXml.Load();
            ServersXml.Load();
            BattleSync.Start();
            BattleManager.Connect();
            Process.GetCurrentProcess().WaitForExit();
        }

        public static DateTime GetLinkerTime(Assembly assembly, TimeZoneInfo target = null)
        {
            var filePath = assembly.Location;
            const int c_PeHeaderOffset = 60;
            const int c_LinkerTimestampOffset = 8;

            var buffer = new byte[2048];

            using (var stream = new FileStream(filePath, FileMode.Open, FileAccess.Read))
            {
                stream.Read(buffer, 0, 2048);
            }

            var offset = BitConverter.ToInt32(buffer, c_PeHeaderOffset);
            var secondsSince1970 = BitConverter.ToInt32(buffer, offset + c_LinkerTimestampOffset);
            var epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
            return TimeZoneInfo.ConvertTimeFromUtc(epoch.AddSeconds(secondsSince1970), target ?? TimeZoneInfo.Local);
        }
    }
}