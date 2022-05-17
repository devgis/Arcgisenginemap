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
   public static class DMOHousingInfo
    {
       public static List<HousingInfo> GetHousingInfo(string sql)
       {
           DataTable mytable = TTHelper.GetTable(sql);
           List<HousingInfo> listhousinginfo = new List<HousingInfo>();
           foreach (DataRow rows in mytable.Rows)
           {
               int HousingInfoid = Convert.ToInt32(rows["HouseInfoID"]);
               listhousinginfo.Add(new HousingInfo(HousingInfoid));
           }
           return listhousinginfo;
       }

       public static void Update(HousingInfo selectHousingInfo)
       {
           SqlConnection conn = TTHelper.GetConnection();
           conn.Open();
           string sql = "update HousingInfo set UID=@UID,Title=@Title,Contents=@Contents,State=@State,Editor=@Editor,ReleaseTime=@ReleaseTime where HouseInfoID=@HouseInfoID";
           SqlCommand command = TTHelper.GetCommand();
           command.Connection = conn;
           command.CommandText = sql;
           SqlParameter para = TTHelper.GetParameter("@UID", selectHousingInfo.HouseInfoID.ToString());
           command.Parameters.Add(para);
           para = TTHelper.GetParameter("@Title", selectHousingInfo.Title);
           command.Parameters.Add(para);
           para = TTHelper.GetParameter("@Contents", selectHousingInfo.Contents);
           command.Parameters.Add(para);
           para = TTHelper.GetParameter("@HouseInfoID", selectHousingInfo.HouseInfoID.ToString());
           command.Parameters.Add(para);
           para = TTHelper.GetParameter("@State", selectHousingInfo.State);
           command.Parameters.Add(para);
           para = TTHelper.GetParameter("@Editor", selectHousingInfo.Editor);
           command.Parameters.Add(para);
           para = TTHelper.GetParameter("@ReleaseTime", DateTime.Now.ToString());
           command.Parameters.Add(para);

           
          
           command.ExecuteNonQuery();
           conn.Close();
       }

       public static void Delete(HousingInfo updateHousingInfo)
       {
          
           SqlConnection conn = TTHelper.GetConnection();
           conn.Open();
           string sql = "delete from HousingInfo where HouseInfoID='" + updateHousingInfo.HouseInfoID + "'";
           SqlCommand command = TTHelper.GetCommand();
           command.CommandText = sql;
           command.Connection = conn;
           command.ExecuteNonQuery();
           conn.Close();

       }

       public static void InsertHousingInfo(HousingInfo housinginfo2)
       {
           //throw new NotImplementedException();
           SqlConnection conn = TTHelper.GetConnection();
           conn.Open();
           string sql = "insert into Housinglnfo (Title,Contents,State,Editor,ReleaseTime,UID) values (@Title,@Contents,@State,@Editor,@ReleaseTime,@UID)";
           SqlCommand command = TTHelper.GetCommand();
           command.Connection = conn;
           command.CommandText = sql;
           SqlParameter para = TTHelper.GetParameter("@Title", housinginfo2.Title);
           command.Parameters.Add(para);
           para = TTHelper.GetParameter("@Contents", housinginfo2.Contents);
           command.Parameters.Add(para);
           para = TTHelper.GetParameter("@UID", housinginfo2.UID.ToString());
           command.Parameters.Add(para);
           para = TTHelper.GetParameter("@State", housinginfo2.State);
           command.Parameters.Add(para);
           para = TTHelper.GetParameter("@Editor", housinginfo2.Editor);
           command.Parameters.Add(para);
           para = TTHelper.GetParameter("@ReleaseTime", housinginfo2.ReleaseTime);
           command.Parameters.Add(para);
           command.ExecuteNonQuery();
           conn.Close();
       }

       public static List<HousingInfo> GetMyHousingInfo(string sql)
       {
           DataTable mytable = TTHelper.GetTable(sql);
           List<HousingInfo> listHousingInfo = new List<HousingInfo>();
           foreach (DataRow rows in mytable.Rows)
           {
               int Housinginfoid = Convert.ToInt32(rows["HouseInfoID"]);
               
               listHousingInfo.Add(new HousingInfo(Housinginfoid));
           }
           return listHousingInfo;
       }



    }
}
