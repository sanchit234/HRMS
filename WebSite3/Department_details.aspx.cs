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
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel7.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text="";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel7.Visible = false;
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = true;
        Panel7.Visible = false;
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=depdetails;Integrated Security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from depdetails where id='" + TextBox2.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read()) 
        {
            TextBox3.Text = dr[0].ToString();
            TextBox4.Text = dr[1].ToString();
            TextBox5.Text = dr[2].ToString();
            TextBox6.Text = dr[3].ToString();
        }
        dr.Close();
        con.Dispose();
        con.Close();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=depdetails;Integrated Security=true");
        con.Open();
        SqlCommand cmd=new SqlCommand(" update depdetails set id='"+TextBox3.Text+"',departmentname='"+TextBox4.Text+"',designation='"+TextBox5.Text+"',departmentnum='"+TextBox6.Text+"' where id='"+TextBox2.Text+"'",con);
        cmd.ExecuteNonQuery();
        con.Dispose();
        con.Close();
        Response.Redirect("Department_details.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel7.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel7.Visible = false;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
        Panel5.Visible = false;
        Panel7.Visible = false; 
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;
        Panel7.Visible = true;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=depdetails;Integrated Security=true");
        con.Open();
        SqlCommand cmd=new SqlCommand("insert depdetails values('"+TextBox7.Text+"','"+TextBox8.Text+"','"+TextBox9.Text+"','"+TextBox10.Text+"')",con);
        cmd.ExecuteNonQuery();
        con.Dispose();
        con.Close();
        Response.Redirect("Department_details.aspx");
    }
}