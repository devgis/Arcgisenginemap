using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ClassLibrary2;
using BOM;

namespace 房产信息管理
{
    public partial class GLY1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            
            
        }

        protected void bt2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex =1;
            
        }

        protected void bt3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex =2;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //int yh_id = Convert.ToInt32(Session["YH_ID"].ToString());
                string adminname = Session["Name"].ToString();
               Admin yh = new Admin(adminname);
                if (tb1.Text.Trim() == "" || tb2.Text.Trim() == "" || tb3.Text.Trim() == "")
                {
                    lab1.Text = "亲，请填写完整信息！";
                }
                else if (tb1.Text.Trim() != yh.Password)
                {
                    lab1.Text = "原始密码有误，请重新输入！";
                    tb1.Text = "";
                }
                else if (tb3.Text.Trim() != tb2.Text.Trim())
                {
                    lab1.Text = "新密码与原始密码不一致，请重新输入！";
                    tb1.Text = "";
                    tb2.Text = "";
                    tb3.Text = "";
                }
                else
                {
                    yh.Password = tb2.Text.Trim();
                    BOMAdmin.Updpassword(yh);
                    Response.Write("<script>alert('密码已修改')</script>");
                    tb1.Text = "";
                    tb2.Text = "";
                    tb3.Text = "";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script language='javascript'>alert(\"" + ex.Message.Replace("\r\n", "") + "\");</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            tb1.Text = "";
            tb2.Text = "";
            tb3.Text = "";
        }

        protected void RepeaterShow_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string strConn = "Data Source=.;Initial Catalog=Estate;Integrated Security=True";
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            if (tb1B.Text == "" || tb10B.Text == "" || tb11B.Text == "" || tb12B.Text == "" || tb13B.Text == "" || tb14B.Text == "" || tb15B.Text == "" || tb16B.Text == "" || tb17B.Text == "" || tb18B.Text == "" || tb19B.Text == "" || tb2B.Text == "" || tb3B.Text == "" || tb4B.Text == "" || tb5B.Text == "" || tb6B.Text == "" || tb7B.Text == "" || tb8B.Text == "" || tb9B.Text == "")
            {


                Response.Write("<script>alert('请将资料填写完整！')</script>");

            }
            else
            {
                string sql = "insert into buildings(building_name,building_price,house_type,property_type,decoration,plot_ratio,greening_rate,opening_time,handing_time,property_fee,property_company,developer,sales_adress,property_adress,transport,parking_information,covering_area,construction_area,equity_age,equipment) values ('" + tb1B.Text + "','" + tb2B.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + DropDownList2.SelectedValue.ToString() + "','" + tb18B.Text + "','" + tb5B.Text + "','" + tb6B.Text + "','" + tb12B.Text + "','" + tb13B.Text + "','" + tb7B.Text + "','" + tb8B.Text + "','" + tb9B.Text + "','" + tb10B.Text + "','" + tb19B.Text + "','" + tb17B.Text + "','" + tb11B.Text + "','" + tb15B.Text + "','" + tb16B.Text + "','" + tbb1B.Text + "','" + tb4B.Text + "')";
                SqlCommand command = new SqlCommand();
                command.CommandText = sql;
                command.Connection = conn;
                command.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('资料添加成功！')</script>");

                tb1B.Text = "";
                tb2B.Text = "";
                DropDownList1.SelectedItem.Text = "";
                DropDownList2.SelectedItem.Text = "";
                tb18B.Text = "";
                tb5B.Text = "";
                tb6B.Text = "";
                tb12B.Text = "";
                tb13B.Text = "";
                tb7B.Text = "";
                tb8B.Text = "";
                tb9B.Text = "";
                tb10B.Text = "";
                tb19B.Text = "";
                tb17B.Text = "";
                tb11B.Text = "";
                tb15B.Text = "";
                tb16B.Text = "";
                tbb1B.Text = "";
                tb4B.Text = "";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            tb1B.Text = "";
            tb2B.Text = "";
            DropDownList1.SelectedItem.Text = "";
            DropDownList2.SelectedItem.Text = "";
            tb18B.Text = "";
            tb5B.Text = "";
            tb6B.Text = "";
            tb12B.Text = "";
            tb13B.Text = "";
            tb7B.Text = "";
            tb8B.Text = "";
            tb9B.Text = "";
            tb10B.Text = "";
            tb19B.Text = "";
            tb17B.Text = "";
            tb11B.Text = "";
            tb15B.Text = "";
            tb16B.Text = "";
            tbb1B.Text = "";
            tb4B.Text = "";
        }

        protected void butt21_Click(object sender, EventArgs e)
        {
            string strConn = "Data Source=.;Initial Catalog=Estate;Integrated Security=True";
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            int A = Convert.ToInt32(((Button)sender).CommandArgument.ToString());
            string sql = "delete from Housinglnfo where HouseInfoID='" + int.Parse(((Button)sender).CommandArgument.ToString()) + "'";

            SqlCommand command = new SqlCommand();
            command.CommandText = sql;
            command.Connection = conn;
            command.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('信息删除成功！')</script>");
               
        }

        protected void butt11_Click(object sender, EventArgs e)
        {
            Response.Redirect("TJ.aspx");
        }
    }
}