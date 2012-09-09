<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Department_details.aspx.cs" Inherits="_Default" Title="Department Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {}
        .style8
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center">
        &nbsp;</p>
    <p align="center">
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#009933" 
            BorderColor="#66FF33" BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#66FF33" 
            Width="165px" onclick="LinkButton1_Click">Department List</asp:LinkButton>
    </p>
    <p align="center">
        <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#009933" 
            BorderColor="#66FF33" BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#66FF33" 
            Width="165px" onclick="LinkButton2_Click">Department Details</asp:LinkButton>
    </p>
<p align="center">
        <asp:LinkButton ID="LinkButton6" runat="server" BackColor="#009933" 
            BorderColor="#66FF33" BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#66FF33" 
            onclick="LinkButton6_Click" Width="165px">Insert Dep Details</asp:LinkButton>
    </p>
    <p align="center">
        <asp:LinkButton ID="LinkButton5" runat="server" BackColor="#009933" 
            BorderColor="#66FF33" BorderStyle="Outset" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#66FF33" 
            onclick="LinkButton5_Click" Width="165px" BorderWidth="6px">Update 
        Department</asp:LinkButton>
    </p>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

                      <asp:Panel ID="Panel1" runat="server" 
        HorizontalAlign="Center">
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:depdetailsConnectionString %>" 
                              SelectCommand="SELECT [id], [departmentname], [designation], [departmentnum] FROM [depdetails] ORDER BY [departmentname], [departmentnum], [designation]">
                          </asp:SqlDataSource>
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                              CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                              GridLines="None" HorizontalAlign="Center">
                              <RowStyle BackColor="#E3EAEB" />
                              <Columns>
                                  <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                  <asp:BoundField DataField="departmentname" HeaderText="departmentname" 
                                      SortExpression="departmentname" />
                                  <asp:BoundField DataField="designation" HeaderText="designation" 
                                      SortExpression="designation" />
                                  <asp:BoundField DataField="departmentnum" HeaderText="departmentnum" 
                                      SortExpression="departmentnum" />
                              </Columns>
                              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                              <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                              <EditRowStyle BackColor="#7C6F57" />
                              <AlternatingRowStyle BackColor="White" />
                          </asp:GridView>
                          
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Font-Bold="True" 
                              Font-Names="Comic Sans MS" ForeColor="#FF9900" HorizontalAlign="Center">
                              Enter Employee Id&nbsp;
                              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                              <br />
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                  ControlToValidate="TextBox1" ErrorMessage="*pls enter employee id" 
                                  ValidationGroup="grp1"></asp:RequiredFieldValidator>
                              <br />
                              <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                                  ValidationGroup="grp1" CssClass="style8" Width="61px" />
                              &nbsp;<asp:Button ID="Button2" runat="server" Text="Reset" 
                                  onclick="Button2_Click" />
                              
                          </asp:Panel>
                          <asp:Panel ID="Panel3" runat="server" Font-Bold="True" 
                              Font-Names="Comic Sans MS" ForeColor="#FF9900" CssClass="style7">
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Department Details:<br />
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label1" runat="server" Text="Employee id" Width="200px"></asp:Label>
                              <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label2" runat="server" Text="Department Name" Width="200px"></asp:Label>
                              <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label3" runat="server" Text="Designation" Width="200px"></asp:Label>
                              <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label4" runat="server" Text="Department Number" Width="200px"></asp:Label>
                              <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                              </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" Font-Bold="True" 
                              Font-Names="Comic Sans MS" ForeColor="#FF9900" HorizontalAlign="Center">
        Enter Employee id
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*pls enter emp id" 
            ValidationGroup="grp2"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" 
            ValidationGroup="grp2" />
        &nbsp;<asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Reset" />
                              </asp:Panel>&nbsp;<asp:Panel ID="Panel5" runat="server" Font-Bold="True" 
                              Font-Names="Comic Sans MS" ForeColor="#FF9900">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
Department Details:<br />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label9" runat="server" Text="Employee id" 
    Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                              ErrorMessage="*pls enter emp id" ControlToValidate="TextBox3" 
                              ValidationGroup="grp3"></asp:RequiredFieldValidator>
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label11" runat="server" 
    Text="Department Name" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                              ErrorMessage="*pls enter dep name" ControlToValidate="TextBox4" 
                              ValidationGroup="grp3"></asp:RequiredFieldValidator>
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label13" runat="server" 
    Text="Designation" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                              ErrorMessage="*pls enter designation" ControlToValidate="TextBox5" 
                              ValidationGroup="grp3"></asp:RequiredFieldValidator>
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label15" runat="server" 
    Text="Department Number" Width="200px"></asp:Label>
                          <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                              ControlToValidate="TextBox6" ErrorMessage="*pls enter dep number" 
                              ValidationGroup="grp3"></asp:RequiredFieldValidator>
&nbsp;<asp:Panel ID="Panel6" runat="server" HorizontalAlign="Center">
                              <asp:Button ID="Button5" runat="server" Text="Update" onclick="Button5_Click" 
                                  ValidationGroup="grp3" />
                              &nbsp;<asp:Button ID="Button6" runat="server" Text="Reset" 
                                  onclick="Button6_Click" />
                          </asp:Panel>
                          <br />
</asp:Panel>
 
    <asp:Panel ID="Panel7" runat="server" Font-Bold="True" 
                              Font-Names="Comic Sans MS" ForeColor="#FF9900">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Department Details:<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label16" runat="server" Text="Employee id" 
    Width="200px"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Height="16px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                              ErrorMessage="*pls enter emp id" ControlToValidate="TextBox3" 
                              ValidationGroup="grp4"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label17" runat="server" 
    Text="Department Name" Width="200px"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                              ErrorMessage="*pls enter dep name" ControlToValidate="TextBox4" 
                              ValidationGroup="grp4"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label18" runat="server" 
    Text="Designation" Width="200px"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                              ErrorMessage="*pls enter designation" ControlToValidate="TextBox5" 
                              ValidationGroup="grp4"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" 
    Text="Department Number" Width="200px"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                              ControlToValidate="TextBox6" ErrorMessage="*pls enter dep number" 
                              ValidationGroup="grp4"></asp:RequiredFieldValidator>
        &nbsp;<asp:Panel ID="Panel8" runat="server" HorizontalAlign="Center">
            <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Insert" 
                ValidationGroup="grp4" />
            &nbsp;<asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Reset" />
        </asp:Panel>
                </asp:Panel>
 </asp:Content>


