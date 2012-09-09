<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="project_Details.aspx.cs" Inherits="_Default" Title="Project Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style7
        {
            height: 26px;
        }
    </style>
    
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
    <p align="center">
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
            BorderColor="#66FF33" BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#66FF33" 
            Width="134px" BackColor="#009933">Insert Project</asp:LinkButton>
    </p>
    <p align="center">
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
            BorderColor="#66FF33" BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#66FF33" 
            Width="134px" BackColor="#009933">Delete Project
        </asp:LinkButton>
    </p>
    <p align="center">
        <asp:LinkButton ID="LinkButton5" runat="server" BorderColor="#66FF33" 
            BorderStyle="Outset" BorderWidth="6px" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#66FF33" 
            Width="134px" BackColor="#009933" onclick="LinkButton5_Click">Update Project
        </asp:LinkButton>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

                      <asp:Panel ID="Panel1" runat="server" 
        HorizontalAlign="Center" Font-Underline="False">
                          <br />
                          <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                              GridLines="None" AutoGenerateColumns="False" 
                              DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                              <RowStyle BackColor="#E3EAEB" />
                              <Columns>
                                  <asp:BoundField DataField="id" HeaderText="id" 
                                      SortExpression="id" />
                                  <asp:BoundField DataField="projectid" HeaderText="projectid" 
                                      SortExpression="projectid" />
                                  <asp:BoundField DataField="name" HeaderText="name" 
                                      SortExpression="name" />
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
    <asp:Panel ID="Panel2" runat="server" Font-Bold="True" 
    Font-Names="Comic Sans MS" ForeColor="#FF9900" Font-Underline="False">
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
            onclick="Button2_Click" CssClass="style7" />
        &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Reset" />
</asp:Panel>
<asp:Panel ID="Panel4" runat="server" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Underline="False" ForeColor="#FF9900" 
            HorizontalAlign="Left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="style6">PROJECT DETAILS:</span><br 
                class="style6" />
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label22" runat="server" 
                Text="Employee id" Width="200px"></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox10" ErrorMessage=" *pls enter emp id" 
                ValidationGroup="grp2"></asp:RequiredFieldValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label21" runat="server" Text="Project id" Width="200px"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBox9" ErrorMessage="*pls enter project id" 
                ValidationGroup="grp2"></asp:RequiredFieldValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label18" runat="server" 
                Text="Project Name" Width="200px"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="*pls enter project name" 
                ValidationGroup="grp2"></asp:RequiredFieldValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label19" runat="server" Text="Commencing Date" Width="200px"></asp:Label>
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
            <asp:DropDownList ID="DropDownList4" runat="server">
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
            <asp:DropDownList ID="DropDownList5" runat="server">
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
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label20" runat="server" 
                Text="Finishing Date" Width="200px"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
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
            <asp:DropDownList ID="DropDownList3" runat="server">
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
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <asp:Panel ID="Panel5" runat="server" HorizontalAlign="Center">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Insert" 
                    ValidationGroup="grp2" />
                &nbsp;<asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Reset" />
            </asp:Panel>
            <br />
        </asp:Panel>
        
            <asp:Panel ID="Panel6" runat="server" Font-Bold="True" Font-Italic="False" 
                Font-Names="Comic Sans MS" ForeColor="#FF9900" HorizontalAlign="Center" 
                          Font-Underline="False">
                <br />
                Enter Project Id
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*pls enter project id" 
                    ValidationGroup="grp3"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Delete" 
                    ValidationGroup="grp3" />
                &nbsp;<asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Reset" />
               
            </asp:Panel>
            <asp:Panel ID="Panel10" runat="server" Font-Bold="True" 
    Font-Names="Comic Sans MS" ForeColor="#FF9900" Font-Underline="False" 
    HorizontalAlign="Center">
                Enter Employee id
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                &nbsp;<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="*pls enter emp id" 
                    ValidationGroup="grp5"></asp:RequiredFieldValidator>
                <br />
                Enter Project id&nbsp;&nbsp;
                <asp:TextBox ID="TextBox12" runat="server" ></asp:TextBox>
                &nbsp;<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="*pls enter project id" 
                    ValidationGroup="grp5"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="Button11" runat="server" Text="Delete" 
                    onclick="Button11_Click" />
                &nbsp;<asp:Button ID="Button12" runat="server" Text="Reset" 
                    onclick="Button12_Click" />
    </asp:Panel>
       
                          <asp:Panel ID="Panel7" runat="server" HorizontalAlign="Left" 
                          Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#FF9900" 
                          Font-Underline="False">
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="style6">PROJECT 
                              DETAILS:</span>&nbsp;<br />
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label10" runat="server" Text="Project Name" Width="200px"></asp:Label>
                              <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label11" runat="server" Text="Commecing Date" Width="200px"></asp:Label>
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
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="Label12" runat="server" Text="Finishing Date" Width="200px"></asp:Label>
                              <asp:DropDownList ID="DropDownList10" runat="server">
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
                              <asp:DropDownList ID="DropDownList11" runat="server">
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
                              <asp:DropDownList ID="DropDownList12" runat="server">
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
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                              <asp:Panel ID="Panel8" runat="server" HorizontalAlign="Center">
                                  <asp:Button ID="Button7" runat="server" Text="Update" Height="26px" 
                                      onclick="Button7_Click" />
                                  &nbsp;<asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Reset" />
                              </asp:Panel>
                          </asp:Panel>
                                            
                      <asp:Panel ID="Panel9" runat="server" HorizontalAlign="Center" Font-Bold="True" 
                          Font-Names="Comic Sans MS" ForeColor="#FF9900" Font-Underline="False">
                          Enter Project Id&nbsp;
                          <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                          <br />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                              ControlToValidate="TextBox8" ErrorMessage="*pls enter project id" 
                              ValidationGroup="grp4"></asp:RequiredFieldValidator>
                          <br />
                          <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Submit" 
                              ValidationGroup="grp4" />
                          &nbsp;<asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                              Text="Reset" />
                      </asp:Panel>
                                            <asp:Panel ID="Panel11" runat="server" 
                          HorizontalAlign="Center" Font-Bold="True" 
                          Font-Names="Comic Sans MS" ForeColor="#FF9900" Font-Underline="False">
                                                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                                                    GroupName="1" oncheckedchanged="RadioButton1_CheckedChanged" 
                                                    Text="Delete employee from project" />
                                                <br />
                                                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                                                    GroupName="1" oncheckedchanged="RadioButton2_CheckedChanged" 
                                                    Text="Delete project" />
                          </asp:panel>
                      
</asp:Content>


