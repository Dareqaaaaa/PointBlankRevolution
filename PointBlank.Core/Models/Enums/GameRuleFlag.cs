using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PointBlank.Core.Models.Enums
{
    [Flags]
    public enum GameRuleFlag
    {
        ไม่มี = 0,
        ห้ามใช้บาเรต = 1,
        ห้ามใช้ลูกซอง = 2,
        ห้ามใช้หน้ากาก = 4,
        กฎแข่ง = 8,
    }
}
