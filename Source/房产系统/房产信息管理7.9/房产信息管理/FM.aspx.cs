using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 房产信息管理
{
    public partial class di1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DL1.aspx");
        }

        protected void bt4_Click(object sender, EventArgs e)
        {
            Response.Redirect("DL2.aspx");
        }

        protected void bt3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ZC.aspx");
        }

        protected void bt2_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:43095/MainPage/Main.aspx");
        }
    }
}