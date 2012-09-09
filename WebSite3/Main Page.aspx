<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Main Page.aspx.cs" Inherits="_Default" Title="WELCOME" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" 
    
        style="font-family: Chiller; font-size: 56px; font-weight: 900; font-style: normal; font-variant: small-caps; text-transform: capitalize; text-decoration: underline; color: #ff9900;">
    HUMAN RESOURCE MANAGEMENT SYSTEM!!!</p>
<p align="center">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" 
        BackColor="#99FF99" BorderColor="#009900" BorderStyle="Outset" Font-Bold="True" 
        Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#009900">Login</asp:HyperLink>
</p>
<p align="center">
    <asp:HyperLink ID="HyperLink2" runat="server" 
        NavigateUrl="~/CompanyServices.aspx" BackColor="#99FF99" 
        BorderColor="#009900" BorderStyle="Outset" Font-Bold="True" 
        Font-Names="Comic Sans MS" ForeColor="#009900" Font-Underline="False">Company Services</asp:HyperLink>
</p>
<p align="center">
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ContactUs.aspx" 
        BackColor="#99FF99" BorderColor="#009900" BorderStyle="Outset" Font-Bold="True" 
        Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#009900">Contact 
    Us</asp:HyperLink>
</p>
<p align="center">
    <asp:HyperLink ID="HyperLink4" runat="server" 
        NavigateUrl="~/About Developers.aspx" BackColor="#99FF99" 
        BorderColor="#009900" BorderStyle="Outset" Font-Bold="True" 
        Font-Names="Comic Sans MS" ForeColor="#009900" Font-Underline="False">About Developers</asp:HyperLink>
</p>
</asp:Content>

