using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace 房产系统
{
    public partial class maohua : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "Data Source=.;Initial Catalog=房产;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            string str1 = "select * from buildings";
            SqlDataAdapter da = new SqlDataAdapter(str1, con);
            DataSet ds1 = new DataSet();
            da.Fill(ds1,"f");
            string s1 = ds1.Tables["f"].Rows[0][2].ToString();
            string s2 = ds1.Tables["f"].Rows[0][11].ToString();
            string s3 = ds1.Tables["f"].Rows[0][3].ToString();
            string s4 = ds1.Tables["f"].Rows[0][4].ToString();
            price.Text = s1;
            kaipan.Text = s2;
            position.Text = s3;
            huxing.Text = s4;
            con.Close();
        }
    }
}