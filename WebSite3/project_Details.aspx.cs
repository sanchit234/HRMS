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
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel3.Visible = true;
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        TextBox10.Text = "";
        TextBox9.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=projectdetails;Integrated Security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert projectdetails values('" + TextBox10.Text + "','" + TextBox9.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DropDownList6.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Dispose();
        con.Close();
        Response.Redirect("project_Details.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
//        TextBox2.Text = "";
        TextBox3.Text = "";
//        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
//        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel6.Visible = false;
        Panel4.Visible = true;
        Panel7.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=projectdetails;Integrated Security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from projectdetails where projectid='" + TextBox1.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr[1].ToString();
            Label2.Text = dr[2].ToString();
            Label3.Text = dr[3].ToString();
            Label4.Text = dr[4].ToString();
            Label5.Text = dr[5].ToString();
            Label6.Text = dr[6].ToString();
            Label7.Text = dr[7].ToString();
            Label8.Text = dr[8].ToString();
        }
        con.Dispose();
        con.Close();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        TextBox1.Text = "";
//        TextBox2.Text = "";
        TextBox3.Text = "";
//        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
//        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = ""; 
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel9.Visible = false;
        Panel11.Visible = true;
        Panel10.Visible = false;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox5.Text = "";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=projectdetails;Integrated Security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from projectdetails where projectid='" + TextBox5.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Dispose();
        con.Close();
        Response.Redirect("project_Details.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox6.Text = "";

    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        TextBox8.Text = "";
    }
    protected void Button9_Click(object sender, EventArgs e)
    {

        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = true;
        Panel9.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=projectdetails;Integrated Security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from projectdetails where projectid='" + TextBox8.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox6.Text = dr[2].ToString();
            DropDownList7.Text = dr[3].ToString();
            DropDownList8.Text = dr[4].ToString();
            DropDownList9.Text = dr[5].ToString();
            DropDownList10.Text = dr[6].ToString();
            DropDownList11.Text = dr[7].ToString();
            DropDownList12.Text = dr[8].ToString();
        }
        dr.Close();
        con.Dispose();
        con.Close();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {

        TextBox1.Text = "";
//        TextBox2.Text = "";
        TextBox3.Text = "";
//        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
//        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel9.Visible = true;
        Panel10.Visible = false;
        Panel11.Visible = false;

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=projectdetails;Integrated Security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("update projectdetails set name='" + TextBox6.Text + "',commencedate='" + DropDownList7.Text + "',commencemonth='" + DropDownList8.Text + "',commenceyear='" + DropDownList9.Text + "',finishdate='" + DropDownList10.Text + "',finishmonth='" + DropDownList11.Text + "',finishyear='" + DropDownList12.Text + "' where projectid='" + TextBox8.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Dispose();
        con.Close();
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        TextBox11.Text = "";
        TextBox12.Text = "";
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=projectdetails;Integrated Security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from projectdetails where projectid='" + TextBox12.Text + "' and id='" + TextBox11.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Dispose();
        con.Close();
        Response.Redirect("project_Details.aspx");
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = true;
        Panel11.Visible = false;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel6.Visible = true;
        Panel7.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
        Panel11.Visible = false;
    }
}
