<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" Title="Login Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p align="center" 
        style="font-family: 'comic Sans MS'; color: #ff9900; text-decoration: underline; font-weight: bold;">
        WELCOME TO LOGIN PAGE</p>
    <p align="center">
        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
            GroupName="login" oncheckedchanged="RadioButton1_CheckedChanged" Text="Admin" />
    </p>
    <p align="center">
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
            GroupName="login" oncheckedchanged="RadioButton2_CheckedChanged" 
            Text="Employee" />
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="123px" HorizontalAlign="Center" 
        Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#FF9900">
        Username
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*pls enter username"></asp:RequiredFieldValidator>
        <br />
        Password
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*pls enter password"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="123px" HorizontalAlign="Center" 
        Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#FF9900">
        Username
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="*pls enter username"></asp:RequiredFieldValidator>
        <br />
        Password
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="*pls enter password"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button3" runat="server" Text="Submit" 
            onclick="Button3_Click1" />
        &nbsp;<asp:Button ID="Button4" runat="server" Text="Reset" 
            onclick="Button4_Click" />
   </asp:Panel>
</asp:Content>


