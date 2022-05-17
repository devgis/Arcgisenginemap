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
    public partial class XINWEN1 : System.Web.UI.Page
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
            MultiView1.ActiveViewIndex = 1;
        }

        protected void bt3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //int yh_id = Convert.ToInt32(Session["YH_ID"].ToString());
                string uname = Session["Name"].ToString();
                U yh = new U(uname);
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
                    BOMU.Updpassword1(yh);
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || txtTopicContent.InnerText == "")
            {
                lab6.Text = "信息的标题和内容都不能为空！";
            }

            else
            {
                string uname = Session["Name"].ToString();
                U yh1 = new U(uname);
                int uid = yh1.UID;
                ClassLibrary2.HousingInfo housing1 = new ClassLibrary2.HousingInfo();
                housing1.Title = TextBox1.Text.Trim();
                housing1.Contents = txtTopicContent.InnerText.Trim();
                housing1.State = "未审";
                housing1.UID = uid;
                housing1.Editor = uname;
                housing1.ReleaseTime = DateTime.Now.ToString();

                //wz1.WZLX_ID = Convert.ToInt32(DropDownList1.SelectedValue);
                BOMHousingInfo.AddHousingInfo(housing1);
                Response.Write("<Script Language=JavaScript>alert('发表成功！');</Script>");
                TextBox1.Text = "";
                txtTopicContent.InnerText = "";
            }
        }

        protected void RepeaterShow_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void butt11_Click(object sender, EventArgs e)
        {
            Response.Redirect("TJ.aspx");
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
    }
}