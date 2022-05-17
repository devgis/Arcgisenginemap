using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using GML;

namespace ClassLibrary2
{
  public  class U
    {
      private int _UID;
      public int UID
      {
          get { return _UID; }
          set { _UID = value; }
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

      private string _Postcode;
      public string Postcode
      {
          get { return _Postcode; }
          set { _Postcode= value; }
      }

      private string _Email;
      public string Email
      {
          get { return _Email; }
          set { _Email = value; }
      }

      private string _Company;
      public string Company
      {
          get { return _Company; }
          set { _Company = value; }
      }

      private string _Address;
      public string Address
      {
          get { return _Address; }
          set { _Address = value; }
      }

      private string _Linkman;
      public string Linkman
      {
          get { return _Linkman; }
          set { _Linkman = value; }
      }

      private string _Telephone;
      public string Telephone
      {
          get { return _Telephone; }
          set { _Telephone = value; }
      }

      public U(int uid)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data source=.;Initial Catalog=Estate;Integrated Security=True";
            conn.Open();
            string sql = "select * from U where UID=" + uid;
            SqlCommand command = new SqlCommand();
            command.CommandText = sql;
            command.Connection = conn;
            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                //_YH_ID = Convert.ToInt32(reader["用户ID"]);
                _UID = uid;
                _Name = reader["Name"].ToString();
                _Password = reader["Password"].ToString();
                _Postcode = reader["Postcode"].ToString();
                _Email = reader["Email"].ToString();
                _Company = reader["Company"].ToString();
                _Address = reader["Address"].ToString();
                _Linkman = reader["Linkman"].ToString();
                _Telephone = reader["Telephone"].ToString();
               // _YH_JS =int.Parse( reader["YH_JS"].ToString());
            }
            conn.Close();
            reader.Close();
        }

      

       public U(string name)
       {
           SqlConnection conn = TTHelper.GetConnection();
           conn.Open();
           string sql = "select * from U where Name=@Name";
           SqlParameter para = TTHelper.GetParameter("@Name", name);
           SqlDataReader reader = TTHelper.GetExcuteReader(conn, sql, para);


           if (reader.Read())
           {
               _Name = name;
               _UID = int.Parse(reader["UID"].ToString());
               _Password = reader["Password"].ToString();
               _Postcode = reader["Postcode"].ToString();
               _Email = reader["Email"].ToString();
               _Company = reader["Company"].ToString();
               _Address = reader["Address"].ToString();
               _Linkman = reader["Linkman"].ToString();
               _Telephone = reader["Telephone"].ToString();
           }
           conn.Close();
           conn.Dispose();
           reader.Close();
       }

       public U()
       {
           // TODO: Complete member initialization
       }
    }
}
