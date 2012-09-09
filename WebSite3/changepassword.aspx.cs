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
        Panel1.Visible = true;
        Panel2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        con = new SqlConnection("Data Source=SANMAN;Initial Catalog=details;Integrated Security=True");
        da = new SqlDataAdapter("select * from login where id='" + TextBox1.Text + "' and passwd='" + TextBox2.Text + "'", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Write("Valid");
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
        else
        {
            Response.Write("Invalid");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con2 = new SqlConnection("Data Source=sanman;Initial Catalog=details;Integrated Security=true");
        con2.Open();
        SqlCommand cmd = new SqlCommand("update login set passwd='" + TextBox4.Text + "' where id='" + TextBox1.Text + "'", con2);
        cmd.ExecuteNonQuery();
        con2.Dispose();
        con2.Close();
        Response.Write("Password updated");
        Response.Redirect("changepassword.aspx");
    }
}
