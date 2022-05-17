using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using ClassLibrary2;
using GML;
using System.Data;
using DMO;

namespace BOM
{
  public  class BOMHousingInfo
    {
      public static object GetListHousingInfo()
      {
          string sql = "select * from HousingInfo";
          return DMOHousingInfo.GetHousingInfo(sql);
      }
      public static void AddHousingInfo(HousingInfo housinginfo1)
      {
          //throw new NotImplementedException();
          DMOHousingInfo.InsertHousingInfo(housinginfo1);
      }
      public static object GetMyHousingInfo(int myid)
      {
         
          string sql = "select * from HousingInfo where UID='" + myid + "'";
          return DMOHousingInfo.GetMyHousingInfo(sql);

      }
      public static void Modify(HousingInfo selectHousingInfo)
      {
          DMOHousingInfo.Update(selectHousingInfo);
      }

      public static void Delete(HousingInfo updatehousinginfo)
      {
         
          DMOHousingInfo.Delete(updatehousinginfo);
      }
    }
}
