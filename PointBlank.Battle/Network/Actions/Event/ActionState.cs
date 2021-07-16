using PointBlank.Battle.Data.Models;
using PointBlank.Battle.Data.Models.Event;

namespace PointBlank.Battle.Network.Actions.Event
{
    public class ActionState
    {
        public static ActionStateInfo ReadInfo(ReceivePacket p, ActionModel ac, bool genLog)
        {
            ActionStateInfo info = new ActionStateInfo
            {
                Action = p.readUD(),
            };
            if (genLog)
            {

            }
            return info;
        }

        public static void WriteInfo(SendPacket s, ActionModel ac, ReceivePacket p, bool genLog)
        {
            ActionStateInfo info = ReadInfo(p, ac, genLog);
            WriteInfo(s, info);
            info = null;
        }

        public static void WriteInfo(SendPacket s, ActionStateInfo info)
        {
            s.writeD(info.Action);
        }
    }
}