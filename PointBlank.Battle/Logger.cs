using System;
using System.IO;

namespace PointBlank.Battle
{
    public static class Logger
    {
        private static string name = "Logs/Battle/" + DateTime.Now.ToString("yyyy-MM-dd--HH-mm-ss") + ".log";
        private static string Date = DateTime.Now.ToString("yyyy-MM-dd--HH-mm-ss");
        private static object Sync = new object();

        private static void write(string text, ConsoleColor color)
        {
            try
            {
                lock (Sync)
                {
                    Console.ForegroundColor = color;
                    Console.WriteLine(" " + text);
                    save(text);
                }
            }
            catch
            {

            }
        }

        public static void LogYaz(string text, ConsoleColor color)
        {
            write(text, color);
        }

        public static void info(string text)
        {
            write(DateTime.Now.ToString("HH:mm:ss ") + "[Info] " + text, ConsoleColor.Gray);
        }

        public static void warning(string text)
        {
            write(DateTime.Now.ToString("HH:mm:ss ") + "[Warning] " + text, ConsoleColor.Yellow);
        }

        public static void error(string text)
        {
            write(DateTime.Now.ToString("HH:mm:ss ") + "[Error] " + text, ConsoleColor.Red);
        }

        public static void debug(string text)
        {
            write(DateTime.Now.ToString("HH:mm:ss ") + "[Debug] " + text, ConsoleColor.Green);
        }

        public static void send(string text)
        {
            write(text, ConsoleColor.Gray);
        }

        public static void LogProblems(string text, string problemInfo)
        {
            try
            {
                save("[Data: " + DateTime.Now.ToString("yy/MM/dd HH:mm:ss") + "]" + text, problemInfo);
            }
            catch
            {

            }
        }

        private static void save(string text)
        {
            using (FileStream fileStream = new FileStream(name, FileMode.Append))
            using (StreamWriter stream = new StreamWriter(fileStream))
            {
                try
                {
                    if (stream != null)
                    {
                        stream.WriteLine(text);
                    }
                }
                catch
                {

                }
                stream.Flush();
                stream.Close();
                fileStream.Flush();
                fileStream.Close();
            }
        }

        public static void save(string text, string type)
        {
            using (FileStream fileStream = new FileStream("Logs/" + type + "/" + Date + ".log", FileMode.Append))
            using (StreamWriter stream = new StreamWriter(fileStream))
            {
                try
                {
                    if (stream != null)
                    {
                        stream.WriteLine(text);
                    }
                }
                catch
                {

                }
                stream.Flush();
                stream.Close();
                fileStream.Flush();
                fileStream.Close();
            }
        }

        public static void checkDirectory()
        {
            if (!Directory.Exists("Logs/Battle"))
            {
                Directory.CreateDirectory("Logs/Battle");
            }
        }
    }
}