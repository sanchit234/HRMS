<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" ForeColor="#FF9900" 
        HorizontalAlign="Center" Font-Bold="True" Font-Names="Comic Sans MS">
        <br />
        Username
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*pls enter username" 
            ValidationGroup="grp"></asp:RequiredFieldValidator>
        <br />
        Password&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*pls enter password" 
            ValidationGroup="grp"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            ValidationGroup="grp" />
        &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" ForeColor="#FF9900" 
        HorizontalAlign="Center" Font-Bold="True" Font-Names="Comic Sans MS">
        <br />
        Enter new password&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        Re-enter new password<asp:TextBox ID="TextBox4" runat="server" 
            TextMode="Password"></asp:TextBox>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
            ErrorMessage="Mismatch of password" ValidationGroup="grp2"></asp:CompareValidator>
        <br />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" />
        &nbsp;<asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Reset" />
        </asp:Panel>
</asp:Content>

