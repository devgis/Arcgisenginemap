using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using GML;
using BOM;
using ClassLibrary2;

namespace 房产信息管理
{
    public partial class ZC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            try
            {
                U u = new U(tb1.Text.Trim());
                if (tb1.Text == "" || tb2.Text == ""||tb3.Text==""||tb4.Text==""||tb5.Text==""||tb6.Text==""||tb7.Text==""||tb8.Text=="")
                {
                    lab2.Text = "注册信息不完整，请补充完整！";
                }
                else if (tb2.Text.Trim() != tb3.Text.Trim())
                {
                    lab2.Text = "两次输入的密码不一致，请确认后重新输入！";
                }

                else if (u.Name == tb1.Text.Trim())
                {
                    lab2.Text = "该用户名已被注册，请重新填写！";
                    tb1.Text = "";
                    tb2.Text = "";
                }
                else
                {
                    U u1 = new U();
                    u1.Password = tb2.Text.Trim();
                    u1.Name = tb1.Text.Trim();
                    u1.Postcode = tb5.Text.Trim();
                    u1.Email = tb6.Text.Trim();
                    u1.Company = tb7.Text.Trim();
                    u1.Address = tb8.Text.Trim();
                    u1.Linkman = tb4.Text.Trim();
                    u1.Telephone = tb9.Text.Trim();

                    BOMU.InsertU(u1);

                    lab2.Text = "注册成功！快去登录吧！";
                    tb1.Text = "";
                    tb2.Text = "";
                    tb3.Text = "";
                    tb4.Text = "";
                    tb5.Text = "";
                    tb6.Text = "";
                    tb7.Text = "";
                    tb8.Text = "";
                    tb9.Text = "";

                    //RadioButton1.Checked = false;
                    //RadioButton2.Checked = false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script language='javascript'>alert(\"" + ex.Message.Replace("\r\n", "") + "\");<script>");
            }
        }

        protected void bt2_Click(object sender, EventArgs e)
        {
            tb1.Text = "";
            tb2.Text = "";
            tb3.Text = "";
            tb4.Text = "";
            tb5.Text = "";
            tb6.Text = "";
            tb7.Text = "";
            tb8.Text = "";
            tb9.Text = "";
        }
    }
}