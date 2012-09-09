<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="employeedetails.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

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
&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton5" runat="server" BorderColor="#66FF33" 
        BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
        Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#99FF33" 
        Width="134px" BackColor="#009933" onclick="LinkButton5_Click" >Update Info</asp:LinkButton>
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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" ForeColor="#FF9900" 
        HorizontalAlign="Center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
             Font-Names="Comic Sans MS" ForeColor="#333333" GridLines="None" 
            HorizontalAlign="Center">
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
     <asp:Panel ID="Panel2" runat="server" Font-Bold="True" 
        Font-Names="Comic Sans MS" ForeColor="#FF9900">
         Enter Employee Id
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="TextBox1" ErrorMessage="*pls enter emp id" 
             ValidationGroup="grp1"></asp:RequiredFieldValidator>
         <br />
         <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
             ValidationGroup="grp1" />
         &nbsp;<asp:Button ID="Button2" runat="server" Text="Reset" 
             onclick="Button2_Click" />
     </asp:Panel>
                               <asp:Panel ID="Panel3" runat="server" HorizontalAlign="Left" Height="729px" 
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
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4- more than 1200k <br />
                              &nbsp;*these are the annual incomes for an employee</asp:Panel>

<asp:Panel ID="Panel4" runat="server" Font-Bold="True" 
        Font-Names="Comic Sans MS" ForeColor="#FF9900" HorizontalAlign="Center">
         Enter Employee Id
         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
             ControlToValidate="TextBox2" ErrorMessage="*pls enter emp id" 
             ValidationGroup="grp2"></asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp; Password&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox67" runat="server" 
             TextMode="Password"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
             ControlToValidate="TextBox67" ErrorMessage="*pls enter password" 
             ValidationGroup="grp2"></asp:RequiredFieldValidator>
         <br />
         <br />
         <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Submit" 
             ValidationGroup="grp2" />
         &nbsp;<asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
             Text="Reset" />
         &nbsp;
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
                              ControlToValidate="TextBox51" ErrorMessage="RequiredFieldValidator" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label74" runat="server" Text="Gender" Width="200px"></asp:Label>
                          <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                              RepeatDirection="Horizontal" RepeatLayout="Flow">
                              <asp:ListItem Value="M">Male</asp:ListItem>
                              <asp:ListItem Value="F">Female</asp:ListItem>
                          </asp:RadioButtonList>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                          <asp:Label ID="Label76" runat="server" Text="Address" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                              ControlToValidate="TextBox52" ErrorMessage="RequiredFieldValidator" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label77" runat="server" Text="City" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                              ControlToValidate="TextBox52" ErrorMessage="RequiredFieldValidator" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label78" runat="server" Text="Country" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                              ControlToValidate="TextBox54" ErrorMessage="RequiredFieldValidator" 
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
                              ControlToValidate="TextBox55" ErrorMessage="RequiredFieldValidator" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label80" runat="server" 
                              Text="Landline" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox56" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                              ControlToValidate="TextBox56" ErrorMessage="RequiredFieldValidator" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label81" runat="server" 
                              Text="Email id" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                              ControlToValidate="TextBox57" ErrorMessage="RequiredFieldValidator" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label82" runat="server" 
                              Text="Fax Number" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox58" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                              ControlToValidate="TextBox58" ErrorMessage="RequiredFieldValidator" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          <br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style6">GRADUATION DETAILS:</span><br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label83" runat="server" 
                              Text="School" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                              ControlToValidate="TextBox59" ErrorMessage="RequiredFieldValidator" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          &nbsp;&nbsp;
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                          <asp:Label ID="Label84" runat="server" Text="Graduation Degree" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox60" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                              ControlToValidate="TextBox60" ErrorMessage="RequiredFieldValidator" 
                              ValidationGroup="grp5"></asp:RequiredFieldValidator>
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label85" runat="server" 
                              Text="Graduation College" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox61" runat="server"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                              ControlToValidate="TextBox61" ErrorMessage="RequiredFieldValidator" 
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
                              ControlToValidate="TextBox66" ErrorMessage="RequiredFieldValidator" 
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
                                  Text="Update" ValidationGroup="grp5" Height="26px" 
                                  onclick="Button7_Click" />
                              &nbsp;<asp:Button ID="Button8" runat="server" Text="Reset" onclick="Button8_Click" 
                                   />
                          </asp:Panel>
                          <br />
                          <br />
                      </asp:Panel>
</asp:Content>

