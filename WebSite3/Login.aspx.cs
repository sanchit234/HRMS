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

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
 
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FormsAuthentication.Authenticate(TextBox1.Text,TextBox2.Text))
        {
            Response.Redirect("admin.aspx");
        }
        else
        {
            Response.Write("Invalid username or password");
        }
    }
    
    protected void Button3_Click1(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=SANMAN;Initial Catalog=details;Integrated Security=True");
        da = new SqlDataAdapter("select*from login where id='" + TextBox3.Text + "' and passwd='" + TextBox4.Text + "'", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Write("Valid");
            Response.Redirect("employeedetails.aspx");
        }
        else
        {
            Response.Write("Invalid");
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}
