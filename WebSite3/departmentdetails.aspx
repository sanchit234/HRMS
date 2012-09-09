<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="departmentdetails.aspx.cs" Inherits="_Default" Title="Department Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
    </p></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

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
                                  ValidationGroup="grp1" CssClass="style8" />
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

</asp:Content>

