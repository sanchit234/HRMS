using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=depdetails;Integrated Security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from depdetails where id='" + TextBox1.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read()) ;
        {
            Label5.Text = dr[0].ToString();
            Label6.Text = dr[1].ToString();
            Label7.Text = dr[2].ToString();
            Label8.Text = dr[3].ToString();
        }
        dr.Close();
        con.Dispose();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
}
