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
    //private System.ComponentModel.IContainer components;
    private int RandomNumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel7.Visible = false;
        Panel6.Visible = false;
        Panel8.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
        //TextBox49.Text = "";
        //TextBox50.Text = "";
        //TextBox51.Text = "";
        //TextBox52.Text = "";
        //TextBox53.Text = "";
        //TextBox54.Text = "";
        //TextBox55.Text = "";
        //TextBox56.Text = "";
        //TextBox57.Text = "";
        //TextBox58.Text = "";
        //TextBox59.Text = "";
        //TextBox60.Text = "";
        //TextBox61.Text = "";
        //TextBox62.Text = "";
        //TextBox63.Text = "";
        //TextBox64.Text = "";
        //TextBox64.Text = "";
        //TextBox66.Text = "";
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel7.Visible = false;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel8.Visible = false;
        Panel9.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = true;
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
        else
        {
            Response.Write("Invalid");
            Panel2.Visible = false;
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

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=details;Integrated Security=true");
        //SqlDataAdapter da = new SqlDataAdapter("select id,firstname,lastname from basicdetails3", con);
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel7.Visible = false;
        Panel6.Visible = false;
        Panel8.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
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
        TextBox59.Text = "";
        TextBox60.Text = "";
        TextBox61.Text = "";
        TextBox62.Text = "";
        TextBox63.Text = "";
        TextBox64.Text = "";
        TextBox64.Text = "";
        TextBox66.Text = "";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel7.Visible = true;
        Panel6.Visible = false;
        Panel10.Visible = false;
        Panel9.Visible = false;
        Panel8.Visible = true; ;
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        TextBox47.Text = "";
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel7.Visible = false;
        Panel6.Visible = true;
        Panel8.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = false;
    }

    //protected void Button5_Click1(object sender, EventArgs e)
    //{
    //    //int a = RandomNumber(1000, 9999);
    //    //string str = a.ToString();
    //    SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=details;Integrated Security=true");
    //    con.Open();
    //    //SqlCommand cmd1 = new SqlCommand("insert basicdetails3 values('" + str + "','" + TextBox25.Text + "','" + TextBox26.Text + "','" + TextBox27.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + RadioButtonList1.Text + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "','" + TextBox31.Text + "','" + TextBox32.Text + "','" + TextBox33.Text + "')", con);
    //    //SqlCommand cmd2 = new SqlCommand("insert contactdetails2 values('" + str + "','" + TextBox34.Text + "','" + TextBox35.Text + "','" + TextBox36.Text + "','" + TextBox37.Text + "')", con);
    //    //SqlCommand cmd3 = new SqlCommand("insert educationdetails2 values('" + str + "','" + TextBox38.Text + "','" + TextBox39.Text + "','" + TextBox40.Text + "','" + TextBox41.Text + "','" + TextBox42.Text + "')", con);
    //    //SqlCommand cmd4 = new SqlCommand("insert otherdetails2 values('" + str + "','" + TextBox43.Text + "','" + TextBox44.Text + "','" + TextBox45.Text + "')", con);
    //    SqlCommand cmd1 = new SqlCommand("insert basicdetails3 values('" + TextBox48.Text + "','" + TextBox49.Text + "','" + TextBox50.Text + "','" + TextBox51.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + RadioButtonList1.Text + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "','" + TextBox52.Text + "','" + TextBox53.Text + "','" + TextBox54.Text + "')", con);
    //    SqlCommand cmd2 = new SqlCommand("insert contactdetails2 values('" + TextBox48.Text + "','" + TextBox55.Text + "','" + TextBox56.Text + "','" + TextBox57.Text + "','" + TextBox58.Text + "')", con);
    //    SqlCommand cmd3 = new SqlCommand("insert educationdetails2 values('" + TextBox48.Text + "','" + TextBox59.Text + "','" + TextBox60.Text + "','" + TextBox61.Text + "','" + TextBox62.Text + "','" + TextBox62.Text + "')", con);
    //    SqlCommand cmd4 = new SqlCommand("insert otherdetails2 values('" + TextBox48.Text + "','" + TextBox64.Text + "','" + TextBox65.Text + "','" + TextBox66.Text + "')", con);
    //    cmd1.ExecuteNonQuery();
    //    cmd2.ExecuteNonQuery();
    //    cmd3.ExecuteNonQuery();
    //    cmd4.ExecuteNonQuery();
    //    con.Dispose();
    //    con.Close();
    //}

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection("Data Source=sanman;Initial Catalog=details;Integrated Security=true");
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("delete from basicdetails4 where id='" + TextBox47.Text + "'", con1);
        SqlCommand cmd2 = new SqlCommand("delete from contactdetails3 where id='" + TextBox47.Text + "'", con1);
        SqlCommand cmd3 = new SqlCommand("delete from educationdetails3 where id='" + TextBox47.Text + "'", con1);
        SqlCommand cmd4 = new SqlCommand("delete from otherdetails3 where id='" + TextBox47.Text + "'", con1);
        cmd1.ExecuteNonQuery();
        cmd2.ExecuteNonQuery();
        cmd3.ExecuteNonQuery();
        cmd4.ExecuteNonQuery();
        con1.Dispose();
        con1.Close();
        SqlConnection con2=new SqlConnection("Data Source=sanman;Initial Catalog=projectdetails;Integrated Security=true");
        con2.Open();
        SqlCommand cmd5 = new SqlCommand("delete from projectdetails where id='" + TextBox47.Text + "'", con2);
        cmd5.ExecuteNonQuery();
        con2.Dispose();
        con2.Close();
        SqlConnection con3 = new SqlConnection("Data Source=sanman;Initial Catalog=depdetails;Integrated Security=true");
        con3.Open();
        SqlCommand cmd6 = new SqlCommand("delete from depdetails where id='" + TextBox47.Text + "'", con3);
        cmd6.ExecuteNonQuery();
        con3.Dispose();
        con3.Close();
        Response.Redirect("employee_details.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox47.Text = "";
        Panel6.Visible = true;
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        Panel1.Visible = true;
    }

    private void InitializeComponent()
    {

    }

    protected void Button7_Click1(object sender, EventArgs e)
    {
        int a = RandomNumber(1000, 9999);
        string str = a.ToString();
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=details;Integrated Security=true");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("insert basicdetails4 values('" + str + "','" + TextBox49.Text + "','" + TextBox50.Text + "','" + TextBox51.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + RadioButtonList1.Text + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "','" + TextBox53.Text + "','" + TextBox52.Text + "','" + TextBox54.Text + "')", con);
        //SqlCommand cmd1=new SqlCommand("insert basicdetails3 values('"+str+"','"+TextBox49.Text+"','"+TextBox50.Text+"','"+TextBox51.Text+"','"+DropDownList1.Text+"','"+DropDownList2.Text+"','"+DropDownList3.Text+"','"+RadioButtonList1.Text+"','"+DropDownList4.Text+"','"+DropDownList5.Text+"''"+DropDownList6.Text+"','"+TextBox53.Text+"','"+TextBox52.Text+"','"+TextBox54.Text+"')",con);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("insert contactdetails3 values('" + str + "','" + TextBox55.Text + "','" + TextBox56.Text + "','" + TextBox57.Text + "','" + TextBox58.Text + "')", con);
        cmd2.ExecuteNonQuery();
        SqlCommand cmd3 = new SqlCommand("insert educationdetails3 values('" + str + "','" + TextBox59.Text + "','" + TextBox60.Text + "','" + TextBox61.Text + "','" + TextBox62.Text + "','" + TextBox63.Text + "')", con);
        cmd3.ExecuteNonQuery();
        SqlCommand cmd4 = new SqlCommand("insert otherdetails3 values('" + str + "','" + TextBox66.Text + "','" + TextBox64.Text + "','" + TextBox65.Text + "')", con);
        cmd4.ExecuteNonQuery();
        SqlCommand cmd5 = new SqlCommand("insert login values('" + str + "','" + TextBox49.Text + "')", con);
        cmd5.ExecuteNonQuery();
        con.Dispose();
        con.Close();
         
        Response.Redirect("employee_details.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox49.Text = "";
        TextBox51.Text = "";
        TextBox52.Text = "";
        TextBox53.Text = "";
        TextBox54.Text = "";
        TextBox55.Text = "";
        TextBox56.Text = "";
        TextBox57.Text = "";
        TextBox58.Text = "";
        TextBox59.Text = "";
        TextBox60.Text = "";
        TextBox61.Text = "";
        TextBox62.Text = "";
        TextBox63.Text = "";
        TextBox64.Text = "";
        TextBox65.Text = "";
        TextBox66.Text = "";
        Panel7.Visible = true;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;   
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
        Panel10.Visible = false;
        Panel9.Visible = true;

        TextBox67.Text = "";
        TextBox68.Text = "";
        TextBox69.Text = "";
        TextBox70.Text = "";
        TextBox71.Text = "";
        TextBox72.Text = "";
        TextBox73.Text = "";
        TextBox74.Text = "";
        TextBox75.Text = "";
        TextBox76.Text = "";
        TextBox77.Text = "";
        TextBox78.Text = "";
        TextBox79.Text = "";
        TextBox80.Text = "";
        TextBox81.Text = "";
        TextBox82.Text = "";
        TextBox83.Text = "";
        TextBox84.Text = "";
        TextBox85.Text = "";
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        TextBox68.Text = "";
        TextBox69.Text = "";
        TextBox70.Text = "";
        TextBox71.Text = "";
        TextBox72.Text = "";
        TextBox73.Text = "";
        TextBox74.Text = "";
        TextBox75.Text = "";
        TextBox76.Text = "";
        TextBox77.Text = "";
        TextBox78.Text = "";
        TextBox79.Text = "";
        TextBox80.Text = "";
        TextBox81.Text = "";
        TextBox82.Text = "";
        TextBox83.Text = "";
        TextBox84.Text = "";
        TextBox85.Text = "";
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
        Panel9.Visible = false;
        Panel10.Visible = true;
        SqlConnection con = new SqlConnection("Data Source=sanman;Initial Catalog=details;Integrated Security=true");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from basicdetails4 where id='" + TextBox67.Text + "'", con);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            TextBox68.Text = dr1[1].ToString();
            TextBox69.Text = dr1[2].ToString();
            TextBox70.Text = dr1[3].ToString();
            DropDownList7.Text = dr1[4].ToString();
            DropDownList8.Text = dr1[5].ToString();
            DropDownList9.Text = dr1[6].ToString();
            RadioButtonList2.Text = dr1[7].ToString();
           // DropDownList10.Text = dr1[8].ToString();
           // DropDownList11.Text = dr1[9].ToString();
           // DropDownList12.Text = dr1[10].ToString();
            TextBox71.Text = dr1[11].ToString();
            TextBox72.Text = dr1[12].ToString();
            TextBox73.Text = dr1[13].ToString();
        }
        else
        {
            Response.Write("Invalid");
            Panel10.Visible = false;
        }
        dr1.Close();
        SqlCommand cmd2 = new SqlCommand("select * from contactdetails3 where id='" + TextBox67.Text + "'", con);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        if (dr2.Read())
        {
            TextBox74.Text = dr2[1].ToString();
            TextBox75.Text = dr2[2].ToString();
            TextBox76.Text = dr2[3].ToString();
            TextBox77.Text = dr2[4].ToString();
        }
        dr2.Close();
        SqlCommand cmd3 = new SqlCommand("select * from educationdetails3 where id='" + TextBox67.Text + "'", con);
        SqlDataReader dr3 = cmd3.ExecuteReader();
        if (dr3.Read())
        {
            TextBox78.Text = dr3[1].ToString();
            TextBox79.Text = dr3[2].ToString();
            TextBox80.Text = dr3[3].ToString();
            TextBox81.Text = dr3[4].ToString();
            TextBox82.Text = dr3[5].ToString();
        }
        dr3.Close();
        SqlCommand cmd4 = new SqlCommand("select * from otherdetails3 where id='" + TextBox67.Text + "'", con);
        SqlDataReader dr4 = cmd4.ExecuteReader();
        if (dr4.Read())
        {
            TextBox83.Text = dr4[1].ToString();
            TextBox84.Text = dr4[2].ToString();
            TextBox85.Text = dr4[3].ToString();
        }
        dr4.Close();
        con.Dispose();
        con.Close();
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        TextBox67.Text = "";
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        SqlConnection con=new SqlConnection("Data Source=sanman;Initial Catalog=details;Integrated Security=true");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update  basicdetails4 set firstname='" + TextBox68.Text + "',middlename='" + TextBox69.Text + "',lastname='" + TextBox70.Text + "',datebirth='" + DropDownList7.Text + "',monthbirth='" + DropDownList8.Text + "',yearbirth='" + DropDownList9.Text + "',gender='" + RadioButtonList2.Text + "',address='" + TextBox71.Text + "',city='" + TextBox72.Text + "',country='" + TextBox73.Text + "' where id='"+TextBox67.Text+"'", con);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("update contactdetails3 set mobile='"+TextBox74.Text+"',landline='"+TextBox75.Text+"',emailid='"+TextBox76.Text+"',fax='"+TextBox77.Text+"' where id='"+TextBox67.Text+"'",con);
        cmd2.ExecuteNonQuery();
        SqlCommand cmd3 = new SqlCommand("update educationdetails3 set school='"+TextBox78.Text+"',graduationdegree='"+TextBox79.Text+"',graduationcollege='"+TextBox80.Text+"',postgraduationdegree='"+TextBox81.Text+"',postgraduationcollege='"+TextBox82.Text+"' where id='"+TextBox67.Text+"'",con);
        cmd3.ExecuteNonQuery();
        SqlCommand cmd4 = new SqlCommand("update otherdetails3 set salarygroup='"+TextBox83.Text+"',skills='"+TextBox84.Text+"',experience='"+TextBox85.Text+"' where id='"+TextBox67.Text+"'",con);
        cmd4.ExecuteNonQuery();
        con.Dispose();
        con.Close();
    }
}

