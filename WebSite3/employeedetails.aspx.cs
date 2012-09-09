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
        Panel7.Visible = false;
    }
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel7.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel7.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;
        Panel7.Visible = false;
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=details;Integrated Security=true");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from basicdetails4 where id='" + TextBox1.Text + "'", con);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            Label7.Text = dr1[0].ToString();
            Label8.Text = dr1[1].ToString();
            Label9.Text = dr1[2].ToString();
            Label10.Text = dr1[3].ToString();
            Label1.Text = dr1[4].ToString();
            Label2.Text = dr1[5].ToString();
            Label3.Text = dr1[6].ToString();
            Label11.Text = dr1[7].ToString();
            Label4.Text = dr1[8].ToString();
            Label5.Text = dr1[9].ToString();
            Label6.Text = dr1[10].ToString();
            Label12.Text = dr1[11].ToString();
            Label13.Text = dr1[12].ToString();
            Label14.Text = dr1[13].ToString();
        }
        dr1.Close();
        SqlCommand cmd2 = new SqlCommand("select * from contactdetails3 where id='" + TextBox1.Text + "'", con);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        if (dr2.Read())
        {
            Label15.Text = dr2[1].ToString();
            Label16.Text = dr2[2].ToString();
            Label17.Text = dr2[3].ToString();
            Label18.Text = dr2[4].ToString();
        }
        dr2.Close();
        SqlCommand cmd3 = new SqlCommand("select * from educationdetails3 where id='" + TextBox1.Text + "'", con);
        SqlDataReader dr3 = cmd3.ExecuteReader();
        if (dr3.Read())
        {
            Label19.Text = dr3[1].ToString();
            Label20.Text = dr3[2].ToString();
            Label21.Text = dr3[3].ToString();
            Label22.Text = dr3[4].ToString();
            Label23.Text = dr3[5].ToString();
        }
        dr3.Close();
        SqlCommand cmd4 = new SqlCommand("select * from otherdetails3 where id='" + TextBox1.Text + "'", con);
        SqlDataReader dr4 = cmd4.ExecuteReader();
        if (dr4.Read())
        {
            Label24.Text = dr4[1].ToString();
            Label25.Text = dr4[2].ToString();
            Label26.Text = dr4[3].ToString();
        }
        dr4.Close();
        con.Dispose();
        con.Close();
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
    }
    protected void Button9_Click(object sender, EventArgs e)
    {

        //Panel1.Visible = false;
        //Panel2.Visible = false;
        //Panel3.Visible = false;
        //Panel4.Visible = false;
        //Panel7.Visible = true; 
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=details;Integrated Security=true");
        con.Open();
        SqlDataAdapter da=new SqlDataAdapter("select * from login where id='"+TextBox2.Text+"' and passwd='"+TextBox67.Text+"'",con);
        DataTable dt = new DataTable(); 
        da.Fill(dt);
        if(dt.Rows.Count>0)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel7.Visible = true;
        }
        else
        {
            Response.Write("Invalid username or password");
        }
        SqlCommand cmd1 = new SqlCommand("select * from basicdetails4 where id='" + TextBox2.Text + "'", con);
        cmd1.ExecuteNonQuery();
        
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            TextBox49.Text = dr1[1].ToString();
            TextBox50.Text = dr1[2].ToString();
            TextBox51.Text=dr1[3].ToString();
           // DropDownList1.Text = dr1[4].ToString();
            //DropDownList2.Text = dr1[5].ToString();
            //DropDownList3.Text = dr1[6].ToString();
            RadioButtonList1.Text= dr1[7].ToString();
           // DropDownList4.Text = dr1[8].ToString();
           // DropDownList5.Text = dr1[9].ToString();
          //  DropDownList6.Text = dr1[10].ToString();
            TextBox53.Text = dr1[11].ToString();
            TextBox52.Text = dr1[12].ToString();
            TextBox54.Text= dr1[13].ToString();
        }
        dr1.Close();
        SqlCommand cmd2 = new SqlCommand("select * from contactdetails3 where id='" + TextBox2.Text + "'", con);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        if (dr2.Read())
        {
            TextBox55.Text = dr2[1].ToString();
            TextBox56.Text = dr2[2].ToString();
            TextBox57.Text=dr2[3].ToString();
            TextBox58.Text = dr2[4].ToString();
        }
        dr2.Close();
        SqlCommand cmd3 = new SqlCommand("select * from educationdetails3 where id='" + TextBox2.Text + "'", con);
        SqlDataReader dr3 = cmd3.ExecuteReader();
        if (dr3.Read())
        {
            TextBox59.Text = dr3[1].ToString();
            TextBox60.Text = dr3[2].ToString();
            TextBox61.Text = dr3[3].ToString();
            TextBox62.Text = dr3[4].ToString();
            TextBox63.Text = dr3[5].ToString();
        }
        dr3.Close();
        SqlCommand cmd4 = new SqlCommand("select * from otherdetails3 where id='" + TextBox2.Text + "'", con);
        SqlDataReader dr4 = cmd4.ExecuteReader();
        if (dr4.Read())
        {
            TextBox66.Text = dr4[1].ToString();
            TextBox64.Text = dr4[2].ToString();
            TextBox65.Text = dr4[3].ToString();
        }
        dr4.Close();
        con.Dispose();
        con.Close();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=details;Integrated Security=true");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update  basicdetails4 set firstname='" + TextBox49.Text + "',middlename='" + TextBox50.Text + "',lastname='" + TextBox51.Text + "',gender='" + RadioButtonList1.Text + "',address='" + TextBox53.Text + "',city='" + TextBox52.Text + "',country='" + TextBox54.Text + "' where id='" + TextBox2.Text + "'", con);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("update contactdetails3 set mobile='" + TextBox55.Text + "',landline='" + TextBox56.Text + "',emailid='" + TextBox57.Text + "',fax='" + TextBox58.Text + "' where id='" + TextBox2.Text + "'", con);
        cmd2.ExecuteNonQuery();
        SqlCommand cmd3 = new SqlCommand("update educationdetails3 set school='" + TextBox59.Text + "',graduationdegree='" + TextBox60.Text + "',graduationcollege='" + TextBox61.Text + "',postgraduationdegree='" + TextBox62.Text + "',postgraduationcollege='" + TextBox63.Text + "' where id='" + TextBox2.Text + "'", con);
        cmd3.ExecuteNonQuery();
        SqlCommand cmd4 = new SqlCommand("update otherdetails3 set salarygroup='" + TextBox66.Text + "',skills='" + TextBox64.Text + "',experience='" + TextBox65.Text + "' where id='" + TextBox2.Text + "'", con);
        cmd4.ExecuteNonQuery();
        con.Dispose();
        con.Close();
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox49.Text = "";
        TextBox50.Text = "";
        TextBox51.Text = "";
        TextBox52.Text = "";
        TextBox53.Text = "";
        TextBox54.Text = "";
        TextBox55.Text = "";
        TextBox56.Text = "";
        TextBox57.Text = "";
        TextBox58.Text = "";
        TextBox60.Text = "";
        TextBox61.Text = "";
        TextBox62.Text = "";
        TextBox63.Text = "";
        TextBox64.Text = "";
        TextBox65.Text = "";
        TextBox66.Text = "";
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {

        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;
        Panel7.Visible = false;
        TextBox49.Text = "";
        TextBox50.Text = "";
        TextBox51.Text = "";
        TextBox52.Text = "";
        TextBox53.Text = "";
        TextBox54.Text = "";
        TextBox55.Text = "";
        TextBox56.Text = "";
        TextBox57.Text = "";
        TextBox58.Text = "";
        TextBox60.Text = "";
        TextBox61.Text = "";
        TextBox62.Text = "";
        TextBox63.Text = "";
        TextBox64.Text = "";
        TextBox65.Text = "";
        TextBox2.Text = "";
        TextBox67.Text = "";
        TextBox66.Text = "";
    }
}
