using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using ClassLibrary2;
using GML;

namespace DMO
{
  public  class DMOAdmin
    {
      public static void InsertAdmin(string sql)
      {
          TTHelper.GetExcuteNonQuery(sql);
      }

      public static void InsertAdmin(Admin admin)
      {
          SqlConnection conn = TTHelper.GetConnection();
          conn.Open();
          int js = 0;
          string sql = "insert into Admin(Name,Password) values(@Name,@Password)";
          SqlCommand command = TTHelper.GetCommand();
          command.Connection = conn;
          command.CommandText = sql;
          SqlParameter para = TTHelper.GetParameter("@Name", admin.Name.ToString());
          //SqlParameter para = TTHelper.GetParameter("@WZLX_ID", wz2.WZLX_ID.ToString());
          command.Parameters.Add(para);
          para = TTHelper.GetParameter("@Password", admin.Password);
          command.Parameters.Add(para);
          command.ExecuteNonQuery();
          conn.Close();
      }
      
    }
}
