using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using ClassLibrary2;
using GML;

 namespace DMO
{
     public class DMOU
    {
         public static void InsertU(string sql)
         {
             TTHelper.GetExcuteNonQuery(sql);
         }
         public static void InsertU(U u)
         {
             SqlConnection conn = TTHelper.GetConnection();
             conn.Open();
             int js = 0;
             string sql = "insert into U(Name,Password,Postcode,Email,Company,Address,Linkman,Telephone) values(@Name,@Password,@Postcode,@Email,@Company,@Address,@Linkman,@Telephone)";
             SqlCommand command = TTHelper.GetCommand();
             command.Connection = conn;
             command.CommandText = sql;
             SqlParameter para = TTHelper.GetParameter("@Name", u.Name.ToString());
             //SqlParameter para = TTHelper.GetParameter("@WZLX_ID", wz2.WZLX_ID.ToString());
             command.Parameters.Add(para);
             para = TTHelper.GetParameter("@Password", u.Password);
             command.Parameters.Add(para);
             para = TTHelper.GetParameter("@Postcode", u.Postcode);
             command.Parameters.Add(para);
             para = TTHelper.GetParameter("@Email", u.Email);
             command.Parameters.Add(para);
             para = TTHelper.GetParameter("@Company", u.Company);
             command.Parameters.Add(para);
             para = TTHelper.GetParameter("@Address", u.Address);
             command.Parameters.Add(para);
             para = TTHelper.GetParameter("@Linkman", u.Linkman);
             command.Parameters.Add(para);
             para = TTHelper.GetParameter("@Telephone", u.Telephone);
             command.Parameters.Add(para);
             para = TTHelper.GetParameter("@UID", u.UID.ToString());
             command.Parameters.Add(para);
             command.ExecuteNonQuery();
             conn.Close();
         }
    }
}
