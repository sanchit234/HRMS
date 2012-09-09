<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="employee_details.aspx.cs" Inherits="Default2" Title="Employee Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        text-align: center;
    }
      
    .style6
    {
        font-family: "Bauhaus 93";
        font-size: medium;
    }
      
        .style7
        {
            width: 48px;
        }
      
    .newStyle1
    {
    }
    .newStyle2
    {
        border: 6px outset #66FF33;
        text-align: center;
        background-color: #009900;
        font-family: "comic Sans MS";
    }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<br />
<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
    BorderColor="#66FF33" BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
    Font-Italic="False" Font-Names="Comic Sans MS" Font-Underline="False" 
    ForeColor="#99FF33" Width="134px" BackColor="#009933">Employee List</asp:LinkButton>
<br />
<br />
<asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
    BorderColor="#66FF33" BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
    Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#99FF33" 
    Width="134px" BackColor="#009933">Employee Details</asp:LinkButton>
<br />
<br />
<asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
    BorderColor="#66FF33" BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
    Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#99FF33" 
    Width="134px" BackColor="#009933">Insert Employee</asp:LinkButton>
<br />
&nbsp;&nbsp;&nbsp;
<br />
<asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
    BorderColor="#66FF33" BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
    Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#99FF33" 
    Width="134px" BackColor="#009933">Delete Employee</asp:LinkButton>
<br />
<br />
&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton5" runat="server" BorderColor="#66FF33" 
        BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
        Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#99FF33" 
        Width="134px" BackColor="#009933" onclick="LinkButton5_Click">Update Employee</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
<br />
<br />
&nbsp;&nbsp;&nbsp;
<br />
<br />
&nbsp;&nbsp;&nbsp;
<br />
&nbsp;&nbsp;&nbsp;
<br />
<br />
&nbsp;&nbsp;&nbsp;
<br />
&nbsp;&nbsp;&nbsp;
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
                      <asp:Panel ID="Panel1" runat="server" Font-Bold="True" 
    Font-Names="Comic Sans MS" ForeColor="#FF9900">
                          <br />
                          Enter Employee id
                          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                          <br />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                              ControlToValidate="TextBox1" ErrorMessage="*pls enter emp id" 
                              ValidationGroup="grp3"></asp:RequiredFieldValidator>
                          <br />
                          <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" 
                              ValidationGroup="grp3" />
                          &nbsp;<asp:Button ID="Button1" runat="server" Text="Reset" 
                              onclick="Button1_Click" />
                          <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Left" Height="729px" 
                              Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#FF9900">
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">BASIC DETAILS:</span><br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label48" runat="server" Text="Employee id" Width="200px"></asp:Label>
                              <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label49" runat="server" Text="First Name" Width="200px"></asp:Label>
                              <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label50" runat="server" Text="Middle Name" Width="200px"></asp:Label>
                              <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label51" runat="server" Text="Last Name" Width="200px"></asp:Label>
                              <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<asp:Label ID="Label52" runat="server" Text="D.O.B" 
                                  Width="200px"></asp:Label>
                              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                              /<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                              /<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label53" runat="server" Text="Gender" Width="200px"></asp:Label>
                              <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                              <asp:Label ID="Label54" runat="server" Text="Date Of Joining" Width="200px"></asp:Label>
                              <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                              /<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                              /<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label55" runat="server" Text="Address" Width="200px"></asp:Label>
                              <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label56" runat="server" Text="City" Width="200px"></asp:Label>
                              <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label57" runat="server" Text="Country" Width="200px"></asp:Label>
                              <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">CONTACT DETAILS:</span>&nbsp;&nbsp;&nbsp;<br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label58" runat="server" Text="Mobile Number" Width="200px"></asp:Label>
                              <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label59" runat="server" Text="Landline" Width="200px"></asp:Label>
                              <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label60" runat="server" Text="Email id" Width="200px"></asp:Label>
                              <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label61" runat="server" Text="Fax Number" Width="200px"></asp:Label>
                              <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                              <br />
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">GRADUATION DETAILS:</span><br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label62" runat="server" Text="School" Width="200px"></asp:Label>
                              <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label63" runat="server" Text="Graduation Degree" Width="200px"></asp:Label>
                              <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label64" runat="server" Text="Graduation College" Width="200px"></asp:Label>
                              <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label65" runat="server" Text="Post-graduation Degree" 
                                  Width="200px"></asp:Label>
                              <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label66" runat="server" Text="Post-graduation College" 
                                  Width="200px"></asp:Label>
                              <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                              <br />
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">OTHER DETAILS:</span><br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label67" runat="server" Text="Salary Group" Width="200px"></asp:Label>
                              <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label68" runat="server" Text="Skills" Width="200px"></asp:Label>
                              <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label69" runat="server" Text="Experience" Width="200px"></asp:Label>
                              <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                              <br />
                              <br />
                              &nbsp;Salary Groups:<br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 1- 120k-240k<br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2- 240k-600k
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3- 600k-1200k<br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4- more than 1200k<br />
                              &nbsp;*these are the annual incomes for an employee</asp:Panel>
</asp:Panel>
<asp:Panel ID="Panel3" runat="server" Height="250px" Font-Bold="True" 
    Font-Names="Comic Sans MS" ForeColor="#FF9900" HorizontalAlign="Center">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <RowStyle BackColor="#E3EAEB" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" 
                SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                SortExpression="lastname" />
        </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:detailsConnectionString %>" 
        SelectCommand="SELECT [id], [firstname], [lastname] FROM [basicdetails4] ORDER BY [firstname], [lastname], [id]">
    </asp:SqlDataSource>
</asp:Panel>
&nbsp;<asp:Panel ID="Panel7" runat="server" HorizontalAlign="Left" 
    Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#FF9900">
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">BASIC DETAILS:</span>&nbsp;&nbsp; 
                          &nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label70" runat="server" 
                              Text="First Name" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox49" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                              ControlToValidate="TextBox49" ErrorMessage=" *pls enter first name" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label71" runat="server" Text="Middle Name" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label72" runat="server" 
                              Text="Last Name" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                              ControlToValidate="TextBox51" ErrorMessage="*pls enter last name" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<asp:Label ID="Label73" runat="server" Text="D.O.B" 
                              Width="200px"></asp:Label>
                          <asp:DropDownList ID="DropDownList1" runat="server">
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem>7</asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem>9</asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                              <asp:ListItem>12</asp:ListItem>
                              <asp:ListItem>13</asp:ListItem>
                              <asp:ListItem>14</asp:ListItem>
                              <asp:ListItem>15</asp:ListItem>
                              <asp:ListItem>16</asp:ListItem>
                              <asp:ListItem>17</asp:ListItem>
                              <asp:ListItem>18</asp:ListItem>
                              <asp:ListItem>19</asp:ListItem>
                              <asp:ListItem>20</asp:ListItem>
                              <asp:ListItem>21</asp:ListItem>
                              <asp:ListItem>22</asp:ListItem>
                              <asp:ListItem>23</asp:ListItem>
                              <asp:ListItem>24</asp:ListItem>
                              <asp:ListItem>25</asp:ListItem>
                              <asp:ListItem>26</asp:ListItem>
                              <asp:ListItem>27</asp:ListItem>
                              <asp:ListItem>28</asp:ListItem>
                              <asp:ListItem>29</asp:ListItem>
                              <asp:ListItem>30</asp:ListItem>
                              <asp:ListItem>31</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList2" runat="server">
                              <asp:ListItem>Jan</asp:ListItem>
                              <asp:ListItem>Feb</asp:ListItem>
                              <asp:ListItem>March</asp:ListItem>
                              <asp:ListItem>April</asp:ListItem>
                              <asp:ListItem>May</asp:ListItem>
                              <asp:ListItem>June</asp:ListItem>
                              <asp:ListItem>July</asp:ListItem>
                              <asp:ListItem>Aug</asp:ListItem>
                              <asp:ListItem>Sep</asp:ListItem>
                              <asp:ListItem>Oct</asp:ListItem>
                              <asp:ListItem>Nov</asp:ListItem>
                              <asp:ListItem>Dec</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList3" runat="server">
                              <asp:ListItem>1991</asp:ListItem>
                              <asp:ListItem>1992</asp:ListItem>
                              <asp:ListItem>1993</asp:ListItem>
                              <asp:ListItem>1994</asp:ListItem>
                              <asp:ListItem>1995</asp:ListItem>
                              <asp:ListItem>1996</asp:ListItem>
                              <asp:ListItem>1997</asp:ListItem>
                              <asp:ListItem>1998</asp:ListItem>
                              <asp:ListItem>1999</asp:ListItem>
                              <asp:ListItem>2000</asp:ListItem>
                              <asp:ListItem>2001</asp:ListItem>
                              <asp:ListItem>2002</asp:ListItem>
                              <asp:ListItem>2003</asp:ListItem>
                              <asp:ListItem>2004</asp:ListItem>
                              <asp:ListItem>2005</asp:ListItem>
                              <asp:ListItem>2006</asp:ListItem>
                              <asp:ListItem>2007</asp:ListItem>
                              <asp:ListItem>2008</asp:ListItem>
                              <asp:ListItem>2009</asp:ListItem>
                              <asp:ListItem>2010</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label74" runat="server" Text="Gender" Width="200px"></asp:Label>
                          <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                              RepeatDirection="Horizontal" RepeatLayout="Flow">
                              <asp:ListItem Value="M">Male</asp:ListItem>
                              <asp:ListItem Value="F">Female</asp:ListItem>
                          </asp:RadioButtonList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                          <asp:Label ID="Label75" runat="server" Text="Date Of Joining" Width="200px"></asp:Label>
                          <asp:DropDownList ID="DropDownList4" runat="server">
                              <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                              <asp:ListItem>3</asp:ListItem>
                              <asp:ListItem>4</asp:ListItem>
                              <asp:ListItem>5</asp:ListItem>
                              <asp:ListItem>6</asp:ListItem>
                              <asp:ListItem>7</asp:ListItem>
                              <asp:ListItem>8</asp:ListItem>
                              <asp:ListItem>9</asp:ListItem>
                              <asp:ListItem>10</asp:ListItem>
                              <asp:ListItem>11</asp:ListItem>
                              <asp:ListItem>12</asp:ListItem>
                              <asp:ListItem>13</asp:ListItem>
                              <asp:ListItem>14</asp:ListItem>
                              <asp:ListItem>15</asp:ListItem>
                              <asp:ListItem>16</asp:ListItem>
                              <asp:ListItem>17</asp:ListItem>
                              <asp:ListItem>18</asp:ListItem>
                              <asp:ListItem>19</asp:ListItem>
                              <asp:ListItem>20</asp:ListItem>
                              <asp:ListItem>21</asp:ListItem>
                              <asp:ListItem>22</asp:ListItem>
                              <asp:ListItem>23</asp:ListItem>
                              <asp:ListItem>24</asp:ListItem>
                              <asp:ListItem>25</asp:ListItem>
                              <asp:ListItem>26</asp:ListItem>
                              <asp:ListItem>27</asp:ListItem>
                              <asp:ListItem>28</asp:ListItem>
                              <asp:ListItem>29</asp:ListItem>
                              <asp:ListItem>30</asp:ListItem>
                              <asp:ListItem>31</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList5" runat="server">
                              <asp:ListItem>Jan</asp:ListItem>
                              <asp:ListItem>Feb</asp:ListItem>
                              <asp:ListItem>March</asp:ListItem>
                              <asp:ListItem>April</asp:ListItem>
                              <asp:ListItem>May</asp:ListItem>
                              <asp:ListItem>June</asp:ListItem>
                              <asp:ListItem>July</asp:ListItem>
                              <asp:ListItem>Aug</asp:ListItem>
                              <asp:ListItem>Sep</asp:ListItem>
                              <asp:ListItem>Oct</asp:ListItem>
                              <asp:ListItem>Nov</asp:ListItem>
                              <asp:ListItem>Dec</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList6" runat="server">
                              <asp:ListItem>2005</asp:ListItem>
                              <asp:ListItem>2006</asp:ListItem>
                              <asp:ListItem>2007</asp:ListItem>
                              <asp:ListItem>2008</asp:ListItem>
                              <asp:ListItem>2009</asp:ListItem>
                              <asp:ListItem>2010</asp:ListItem>
                          </asp:DropDownList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label76" runat="server" Text="Address" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                              ControlToValidate="TextBox52" ErrorMessage="*pls enter address" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label77" runat="server" Text="City" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                              ControlToValidate="TextBox52" ErrorMessage="*pls enter city" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label78" runat="server" Text="Country" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                              ControlToValidate="TextBox54" ErrorMessage="*pls enter country" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">CONTACT DETAILS:</span>&nbsp;&nbsp;&nbsp;<br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label79" runat="server" 
                              Text="Mobile Number" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox55" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                              ControlToValidate="TextBox55" ErrorMessage="*pls enter mobile number" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label80" runat="server" 
                              Text="Landline" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox56" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                              ControlToValidate="TextBox56" ErrorMessage="*pls enter landline" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label81" runat="server" 
                              Text="Email id" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                              ControlToValidate="TextBox57" ErrorMessage="*pls enter email id" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label82" runat="server" 
                              Text="Fax Number" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox58" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                              ControlToValidate="TextBox58" ErrorMessage="*pls enter fax number" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">GRADUATION DETAILS:</span><br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label83" runat="server" 
                              Text="School" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                              ControlToValidate="TextBox59" ErrorMessage="*pls enter school" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                          <asp:Label ID="Label84" runat="server" Text="Graduation Degree" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox60" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                              ControlToValidate="TextBox60" ErrorMessage="*pls enter graduation degree" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label85" runat="server" 
                              Text="Graduation College" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox61" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                              ControlToValidate="TextBox61" ErrorMessage="*pls enter graduation college" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label86" runat="server" Text="Post-graduation Degree" 
                              Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox62" runat="server"></asp:TextBox>
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label87" runat="server" Text="Post-graduation College" 
                              Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox63" runat="server"></asp:TextBox>
                          &nbsp;<br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">OTHER DETAILS:</span><br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label88" runat="server" 
                              Text="Salary Group" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox66" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                              ControlToValidate="TextBox66" ErrorMessage="*pls enter salary group" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label89" runat="server" Text="Skills" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox64" runat="server"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label90" runat="server" Text="Experience" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox65" runat="server"></asp:TextBox>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          <br />
                          &nbsp;Salary Groups:<br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 1- 120k-240k<br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2- 240k-600k
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3- 600k-1200k<br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4- more than 1200k<br />
                          &nbsp;*these are the annual incomes for an employee<br />
                          <asp:Panel ID="Panel8" runat="server" HorizontalAlign="Center" Font-Bold="True" 
                              Font-Names="Comic Sans MS" ForeColor="#FF9900">
                              <asp:Button ID="Button7" runat="server" CssClass="style7" 
                                  onclick="Button7_Click1" Text="Insert" ValidationGroup="grp5" />
                              &nbsp;<asp:Button ID="Button8" runat="server" Text="Reset" 
                                  onclick="Button8_Click" />
                          </asp:Panel>
                          <br />
                          <br />
                      </asp:Panel>
<p>
    &nbsp;<br />
</p>


                      <asp:Panel ID="Panel6" runat="server" Font-Bold="True" 
    Font-Names="Comic Sans MS" ForeColor="#FF9900">
                          Enter Employee Id&nbsp;&nbsp;
                          <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
                          <br />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                              ControlToValidate="TextBox47" ErrorMessage="*pls enter id" 
                              ValidationGroup="grp2"></asp:RequiredFieldValidator>
                          <br />
                          <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Delete" 
                              ValidationGroup="grp2" />
                          &nbsp;<asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Reset" />
                         </asp:panel>
                          <asp:Panel ID="Panel9" runat="server" 
    Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#FF9900">
                              Enter Employee Id&nbsp;&nbsp;
                              <asp:TextBox ID="TextBox67" runat="server"></asp:TextBox>
                              <br />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
                                  ControlToValidate="TextBox67" ErrorMessage="*pls enter employee id" 
                                  ValidationGroup="grp"></asp:RequiredFieldValidator>
                              <br />
                              <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Submit" 
                                  ValidationGroup="grp6" />
                              &nbsp;<asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                                  Text="Reset" />
                                  </asp:panel>
                              <asp:Panel ID="Panel10" runat="server" 
    HorizontalAlign="Left" Font-Bold="True" Font-Names="Comic Sans MS" 
    ForeColor="#FF9900">
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">BASIC DETAILS:</span>&nbsp;&nbsp;<br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label27" runat="server" Text="First Name" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox68" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label28" runat="server" Text="Middle First" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox69" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label32" runat="server" Text="Last Name" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox70" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label29" runat="server" Text="D.O.B" Width="200px"></asp:Label>
                                  <asp:DropDownList ID="DropDownList7" runat="server">
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                      <asp:ListItem>11</asp:ListItem>
                                      <asp:ListItem>12</asp:ListItem>
                                      <asp:ListItem>13</asp:ListItem>
                                      <asp:ListItem>14</asp:ListItem>
                                      <asp:ListItem>15</asp:ListItem>
                                      <asp:ListItem>16</asp:ListItem>
                                      <asp:ListItem>17</asp:ListItem>
                                      <asp:ListItem>18</asp:ListItem>
                                      <asp:ListItem>19</asp:ListItem>
                                      <asp:ListItem>20</asp:ListItem>
                                      <asp:ListItem>21</asp:ListItem>
                                      <asp:ListItem>22</asp:ListItem>
                                      <asp:ListItem>23</asp:ListItem>
                                      <asp:ListItem>24</asp:ListItem>
                                      <asp:ListItem>25</asp:ListItem>
                                      <asp:ListItem>26</asp:ListItem>
                                      <asp:ListItem>27</asp:ListItem>
                                      <asp:ListItem>28</asp:ListItem>
                                      <asp:ListItem>29</asp:ListItem>
                                      <asp:ListItem>30</asp:ListItem>
                                      <asp:ListItem>31</asp:ListItem>
                                  </asp:DropDownList>
                                  <asp:DropDownList ID="DropDownList8" runat="server">
                                      <asp:ListItem>Jan</asp:ListItem>
                                      <asp:ListItem>Feb</asp:ListItem>
                                      <asp:ListItem>March</asp:ListItem>
                                      <asp:ListItem>April</asp:ListItem>
                                      <asp:ListItem>May</asp:ListItem>
                                      <asp:ListItem>June</asp:ListItem>
                                      <asp:ListItem>July</asp:ListItem>
                                      <asp:ListItem>Aug</asp:ListItem>
                                      <asp:ListItem>Sep</asp:ListItem>
                                      <asp:ListItem>Oct</asp:ListItem>
                                      <asp:ListItem>Nov</asp:ListItem>
                                      <asp:ListItem>Dec</asp:ListItem>
                                  </asp:DropDownList>
                                  <asp:DropDownList ID="DropDownList9" runat="server">
                                      <asp:ListItem>1991</asp:ListItem>
                                      <asp:ListItem>1992</asp:ListItem>
                                      <asp:ListItem>1993</asp:ListItem>
                                      <asp:ListItem>1994</asp:ListItem>
                                      <asp:ListItem>1995</asp:ListItem>
                                      <asp:ListItem>1996</asp:ListItem>
                                      <asp:ListItem>1997</asp:ListItem>
                                      <asp:ListItem>1998</asp:ListItem>
                                      <asp:ListItem>1999</asp:ListItem>
                                      <asp:ListItem>2000</asp:ListItem>
                                      <asp:ListItem>2001</asp:ListItem>
                                      <asp:ListItem>2002</asp:ListItem>
                                      <asp:ListItem>2003</asp:ListItem>
                                      <asp:ListItem>2004</asp:ListItem>
                                      <asp:ListItem>2005</asp:ListItem>
                                      <asp:ListItem>2006</asp:ListItem>
                                      <asp:ListItem>2007</asp:ListItem>
                                      <asp:ListItem>2008</asp:ListItem>
                                      <asp:ListItem>2009</asp:ListItem>
                                      <asp:ListItem>2010</asp:ListItem>
                                  </asp:DropDownList>
                                  &nbsp;&nbsp;<br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label30" runat="server" Text="Gender" Width="200px"></asp:Label>
                                  <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                                      RepeatDirection="Horizontal" RepeatLayout="Flow">
                                      <asp:ListItem Value="M">Male</asp:ListItem>
                                      <asp:ListItem Value="F">Female</asp:ListItem>
                                  </asp:RadioButtonList>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label33" runat="server" Text="Address" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox71" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label34" runat="server" Text="City" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox72" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label35" runat="server" Text="Country" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox73" runat="server"></asp:TextBox>
                                  <br />
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">CONTACT DETAILS:</span>&nbsp;<br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label36" runat="server" Text="Mobile Number" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox74" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label37" runat="server" Text="Landline" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox75" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label38" runat="server" Text="Email id" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox76" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label39" runat="server" Text="Fax Number" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox77" runat="server"></asp:TextBox>
                                  <br />
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">GRADUATION DETAILS:<br />
                                  </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label40" runat="server" Text="School" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox78" runat="server"></asp:TextBox>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label41" runat="server" Text="Graduation Degree" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox79" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label42" runat="server" Text="Graduation College" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox80" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label43" runat="server" Text="Post-graduation Degree" 
                                      Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox81" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label44" runat="server" Text="Post-graduation College" 
                                      Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox82" runat="server"></asp:TextBox>
                                  <br />
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">OTHER DETAILS:&nbsp; </span>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label45" runat="server" Text="Salary Group" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox83" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label46" runat="server" Text="Skills" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox84" runat="server"></asp:TextBox>
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label47" runat="server" Text="Experience" Width="200px"></asp:Label>
                                  <asp:TextBox ID="TextBox85" runat="server"></asp:TextBox>
                                  <br />
                                  <br />
                                  &nbsp;Salary Groups:<br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 1- 120k-240k<br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2- 240k-600k
                                  <br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3- 600k-1200k<br />
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4- more than 1200k<br />
                                  &nbsp;*these are the annual incomes for an employee<br />
                                  <asp:Panel ID="Panel11" runat="server" HorizontalAlign="Center" Height="34px">
                                      <asp:Button ID="Button11" runat="server" onclick="Button11_Click" 
                                          Text="Update" />
                                      &nbsp;<asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
                                          Text="Reset" />
                                  </asp:Panel>
                              </asp:Panel>
                        


</asp:Content>

