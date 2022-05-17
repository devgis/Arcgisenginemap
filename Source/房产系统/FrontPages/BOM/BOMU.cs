using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ClassLibrary2;
using GML;
using DMO;

namespace BOM
{
   public class BOMU
    {
        public static void InsertU(U u)
        {
            // string sql = "insert into YH(YH_NC,YH_MM,YH_XB) values ('" + yh.YH_NC + "','" + yh.YH_MM + "','" + yh.YH_XB + "')";
            DMOU.InsertU(u);

        }

        public static void Updpassword1(U u)
        {
            string sql1 = "update U set Password='" + u.Password + "' where Name='" + u.Name + "';";
            TTHelper.GetExcuteNonQuery(sql1);
        }
    }
}
