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
    public partial class maohua_lp_detail : System.Web.UI.Page
    {
        protected void Page_Load2(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBind2();
            }
        }
        public void DataBind2()
        {
            string str = "Data Source=.;Initial Catalog=Estate;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            string str1 = "select * from buildings";
            SqlDataAdapter da = new SqlDataAdapter(str1, con);
            DataSet ds1 = new DataSet();
            da.Fill(ds1, "f");
            string s1 = ds1.Tables["f"].Rows[0][5].ToString();
            string s2 = ds1.Tables["f"].Rows[0][6].ToString();
            string s3 = ds1.Tables["f"].Rows[0][7].ToString();
            string s4 = ds1.Tables["f"].Rows[0][8].ToString();
            string s5 = ds1.Tables["f"].Rows[0][9].ToString();
            string s6 = ds1.Tables["f"].Rows[0][10].ToString();
            string s7 = ds1.Tables["f"].Rows[0][11].ToString();
            string s8 = ds1.Tables["f"].Rows[0][12].ToString();
            string s9 = ds1.Tables["f"].Rows[0][13].ToString();
            string s10 = ds1.Tables["f"].Rows[0][14].ToString();
            string s11 = ds1.Tables["f"].Rows[0][15].ToString();
            string s12 = ds1.Tables["f"].Rows[0][16].ToString();
            string s13 = ds1.Tables["f"].Rows[0][17].ToString();
            string s14 = ds1.Tables["f"].Rows[0][18].ToString();
            string s15 = ds1.Tables["f"].Rows[0][2].ToString();
            string s16 = ds1.Tables["f"].Rows[0][22].ToString();
            string s17 = ds1.Tables["f"].Rows[0][23].ToString();
            string s18 = ds1.Tables["f"].Rows[0][24].ToString();
            string s19 = ds1.Tables["f"].Rows[0][25].ToString();
            lbl1.Text = s1;
            lbl2.Text = s2;
            lbl3.Text = s3;
            lbl4.Text = s4;
            lbl5.Text = s5;
            lbl6.Text = s6;
            lbl7.Text = s7;
            lbl8.Text = s8;
            lbl9.Text = s9;
            lbl10.Text = s10;
            lbl11.Text = s11;
            lbl12.Text = s12;
            lbl13.Text = s13;
            lbl14.Text = s14;
            lbl15.Text = s15;
            lbl16.Text = s14;
            lbl17.Text = s16;
            lbl18.Text = s17;
            lbl19.Text = s18;
            lbl20.Text = s19;
            DataSet ds = new DataSet();
            string sql = "select equipment from  buildings where building_id=1";
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            sda.Fill(ds);
            rp1.DataSource = ds;
            rp1.DataBind();
            DataSet ds2 = new DataSet();
            string sql1 = "select floor_condition from  buildings where building_id=1";
            SqlDataAdapter sda1 = new SqlDataAdapter(sql1, con);
            sda1.Fill(ds2);
            Repeater1.DataSource = ds2;
            Repeater1.DataBind();
            con.Close();
        }
    }
}