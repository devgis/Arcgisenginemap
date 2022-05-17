using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ClassLibrary2;

namespace 房产信息管理
{
    public partial class DL2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            string name = tb1.Text.Trim();
            U u = new U(name);//传参 初始化
            if (u.Name == tb1.Text.Trim() && u.Password == tb2.Text.Trim())
            {
                Session["Name"] = tb1.Text.Trim();
                Session["UID"] = u.UID; ;
                Response.Redirect("YH.aspx");

            }
            else
            {
                lab1.Text = "用户名或密码不正确，请重新输入！";
                tb1.Text = "";
                tb2.Text = "";
                //Response.Write("<script>alter('用户名或密码不正确，请重新输入')</script>");
            }
        }

        protected void bt2_Click(object sender, EventArgs e)
        {
            tb1.Text = "";
            tb2.Text = "";
        }
    }
}