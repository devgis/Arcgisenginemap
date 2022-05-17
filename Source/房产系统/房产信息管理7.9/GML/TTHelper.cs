using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace GML
{
   public class TTHelper
    {
       //数据库连接
       public static SqlConnection GetConnection()
       {
           SqlConnection conn = new SqlConnection("Data Source=.;initial Catalog=Estate;Integrated Security=True");
           return conn;
       }
       //命令
       public static SqlCommand GetCommand()
       {
           SqlCommand comm = new SqlCommand();
           return comm;
       }

       public static SqlDataReader GetExcuteReader(SqlConnection connection, string sql)
       {
           if (connection.State == System.Data.ConnectionState.Closed)
           {
               connection.Open();
           }
           SqlCommand command = GetCommand();
           command.CommandText = sql;
           command.Connection = connection;
           //SqlDataReader reader = command.ExecuteReader();
           //return reader;
           return command.ExecuteReader();
       }

       public static SqlParameter GetParameter(string ParameterName, string ParameterValue)
       {
           return new SqlParameter(ParameterName, ParameterValue);
       }
       public static SqlDataReader GetExcuteReader(SqlConnection conn, string sql, SqlParameter para)
       {
           if (conn.State == System.Data.ConnectionState.Closed)
           {
               conn.Open();
           }
           SqlCommand command = GetCommand();
           command.CommandText = sql;
           command.Connection = conn;
           command.Parameters.Add(para);
           return command.ExecuteReader();
       }

       public static void GetExcuteNonQuery(string sql)
       {
           SqlConnection conn = GetConnection();
           conn.Open();
           SqlCommand command = GetCommand();
           command.Connection = conn;
           command.CommandText = sql;
           command.ExecuteNonQuery();
           conn.Close();
       }

       public static SqlDataAdapter GetAdapter()
       {
           return new SqlDataAdapter();
       }

       public static DataTable GetTable(string sql)
       {
           SqlConnection conn = GetConnection();//获取连接对象
           SqlCommand command = GetCommand();//获取命令对象
           command.CommandText = sql;//指定命令对象的文本内容
           command.Connection = conn;//指定命令对象的连接对象
           SqlDataAdapter adp = GetAdapter();//获取数据适配器
           DataTable myTable = new DataTable();//创建DataTable实例
           adp.SelectCommand = command;//调用适配器的查询命令属性并为该属性赋值
           adp.Fill(myTable);//填充实例化的数据表
           return myTable;//返回数据表

       }
    }
}
