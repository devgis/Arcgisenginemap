using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ClassLibrary2;
using GML;
using DMO;

namespace BOM
{
   public class BOMAdmin
    {
        public static void InsertAdmin(Admin admin)
        {
            // string sql = "insert into YH(YH_NC,YH_MM,YH_XB) values ('" + yh.YH_NC + "','" + yh.YH_MM + "','" + yh.YH_XB + "')";
            
            DMOAdmin.InsertAdmin(admin);

        }

        public static void Updpassword(Admin admin)
        {
            string sql1 = "update Admin set Password='" + admin.Password + "' where Name='" + admin.Name + "';";
            TTHelper.GetExcuteNonQuery(sql1);
        }
    }
}
