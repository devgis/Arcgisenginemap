using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary2;
using BOM;
using GML;
using System.Data.SqlClient;
using System.Data;


namespace 房产信息管理
{
    public partial class XXNR1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int houseinfoid = Convert.ToInt32(Request.QueryString["HouseInfoid"]);
            ClassLibrary2.HousingInfo topic = new HousingInfo(houseinfoid);
            TextBox1.Text = topic.Title;
            txtTopicContent.InnerHtml = topic.Contents;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            txtTopicContent.InnerText = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string strConn = "Data Source=.;Initial Catalog=Estate;Integrated Security=True";
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            //string sql = "update  Housinglnfo set Title='" + TextBox1.Text + "',Contents='" + txtTopicContent.InnerText + "'  where HouseInfoID='" + int.Parse(" HouseInfoid".ToString()) + "'";
            string sql = "update  Housinglnfo set Title='" + TextBox1.Text + "',Contents='" + txtTopicContent.InnerText + "'  where Title='" + TextBox1.Text + "'";

            SqlCommand command = new SqlCommand();
            command.CommandText = sql;
            command.Connection = conn;
            command.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('信息编辑成功！')</script>");
            TextBox1.Text = "";
            txtTopicContent.InnerText = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("GLY1.aspx");
        }
    }
}