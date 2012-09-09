<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="projectdetails.aspx.cs" Inherits="_Default" Title="Project Details " %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <p align="center">
        &nbsp;</p>
    <p align="center">
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            BorderColor="#66FF33" BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#66FF33" 
            Width="134px" BackColor="#009933">Project List</asp:LinkButton>
    </p>
    <p align="center">
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
            BorderColor="#66FF33" BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#66FF33" 
            Width="134px" BackColor="#009933">Project 
        Details</asp:LinkButton>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
            HorizontalAlign="Center">
            <RowStyle BackColor="#E3EAEB" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="projectid" HeaderText="projectid" 
                    SortExpression="projectid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            </Columns>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:projectdetailsConnectionString %>" 
            SelectCommand="SELECT [id], [projectid], [name] FROM [projectdetails] ORDER BY [name], [projectid], [id]">
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Font-Names="Comic Sans MS" 
        ForeColor="#FF9900" Font-Underline="False" Font-Bold="True">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">PROJECT DETAILS:</span><br 
            class="style6" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server" Text="Project id" Width="200px"></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label14" runat="server" Text="Project Name" Width="200px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label16" runat="server" 
            Text="Commencing Date" Width="200px"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        /<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        /<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label17" runat="server" 
            Text="Finishing Date" Width="200px"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        /<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        /<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" HorizontalAlign="Center" 
    Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#FF9900" Font-Underline="False">
        <br />
        Enter Project id
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*pls enter project id" 
            ValidationGroup="grp"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Submit" ValidationGroup="grp" 
            onclick="Button2_Click" />
        &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Reset" />
</asp:Panel>
</asp:Content>

