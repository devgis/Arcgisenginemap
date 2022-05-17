using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using GML;

namespace ClassLibrary2
{
   public class Admin
    {
       private int _AdminID;
       public int AdminID
       {
           get { return _AdminID; }
           set { _AdminID = value; }
       }

       private string _Name;
       public string Name
       {
           get { return _Name; }
           set { _Name = value; }
       }

       private string _Password;
       public string Password
       {
           get { return _Password; }
           set { _Password = value; }
       }

        public Admin(int adminid)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data source=.;Initial Catalog=Estate;Integrated Security=True";
            conn.Open();
            string sql = "select * from Admin where AdminID=" + adminid;
            SqlCommand command = new SqlCommand();
            command.CommandText = sql;
            command.Connection = conn;
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                //_YH_ID = Convert.ToInt32(reader["用户ID"]);
                _AdminID =adminid;
                _Name = reader["Name"].ToString();
                _Password = reader["Password"].ToString();
            }
            conn.Close();
            reader.Close();
        }

       public Admin(string name)
        {
            SqlConnection conn = TTHelper.GetConnection();
            conn.Open();
            string sql = "select * from Admin where Name=@Name";
            SqlParameter para = TTHelper.GetParameter("@Name", name);
            SqlDataReader reader = TTHelper.GetExcuteReader(conn, sql, para);


            if (reader.Read())
            {
                //_YH_ID = Convert.ToInt32(reader["用户ID"]);

                _Name = name;
                //_YH_MC = reader["YH_MC"].ToString();
                _Password = reader["Password"].ToString();
                
            }
            conn.Close();
            conn.Dispose();
            reader.Close();
        }
    }
}
