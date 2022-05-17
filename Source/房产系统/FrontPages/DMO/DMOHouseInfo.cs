using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using GML;
using System.Data.SqlClient;
using ClassLibrary2;

namespace DMO
{
   public static class DMOHouseInfo
    {
       public static List<HouseInfo> GetHouseInfo(string sql)
       {
           DataTable mytable = TTHelper.GetTable(sql);
           List<HouseInfo> listhouseinfo = new List<HouseInfo>();
           foreach (DataRow rows in mytable.Rows)
           {
               int HouseInfoid = Convert.ToInt32(rows["HouseInfoID"]);
               listhouseinfo.Add(new HouseInfo(HouseInfoid));
           }
           return listhouseinfo;
       }
    }
}
