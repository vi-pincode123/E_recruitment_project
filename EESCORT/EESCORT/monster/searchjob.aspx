<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchjob.aspx.cs" Inherits="searchjob" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
            font-size: x-large;
            font-family: Aharoni;
            font-style: italic;
            font-weight: bold;
            text-decoration: underline;
        }
        .style2
        {
            font-weight: bold;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style3
        {
            text-align: center;
            height: 135px;
        }
        .style4
        {
            text-decoration: underline;
        }
        .style5
        {
            font-weight: bold;
        }
        .style6
        {
            font-weight: bold;
            text-decoration: underline;
        }
    </style>
</head>
<body background="images/www.jpg">
    <form id="form1" runat="server">
    <div style="top: 15px; left: 16px; position: absolute; height: 139px; width: 1078px">
    
        &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/images/head.jpg" 
            style="top: -2px; left: 0px; position: absolute; height: 140px; width: 807px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/mainpic.jpg" 
            style="top: 0px; left: 810px; position: absolute; height: 230px; width: 329px" />
    
    </div>
    <div style="top: 205px; left: 16px; position: absolute; height: 45px; width: 809px; background-color: #003399; bottom: 217px;">
        <span class="style1">SEARCH JOBS</span><br class="style1" />
    </div>
    <div class="style2" 
        
        style="top: 259px; left: 14px; position: absolute; height: 136px; width: 410px; background-color: #FFFFFF">
        <div class="style3">
            <span class="style4">SEARCH JOBS BY FUNCTION</span><br />
            <br />
            Select Your Dream Job:
            <asp:DropDownList ID="ddjob" runat="server" Height="17px" Width="142px">
            </asp:DropDownList>
&nbsp;<br />
            <br />
            <asp:Button ID="btns" runat="server" onclick="btns_Click" Text="Search" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
    <div class="style5" 
        
        style="top: 257px; left: 433px; position: absolute; height: 134px; width: 381px; text-align: center; background-color: #FFFFFF">
        <span class="style4">SEARCH JOBS BY LOCATION </span>
        <br />
        <br />
        Select your Dream City:<asp:DropDownList ID="ddcity" runat="server" 
            Height="18px" Width="133px">
        </asp:DropDownList>
        <br />
&nbsp;<br />
        <asp:Button ID="btncity" runat="server" onclick="btncity_Click" Text="Search" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="gdjob" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="jobid" ForeColor="#333333" GridLines="None" 
            onselectedindexchanged="gdjob_SelectedIndexChanged" style="text-align: center" 
            Width="368px">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="compid" HeaderText="Company" />
                <asp:BoundField DataField="jobtitle" HeaderText="Job Name" />
                <asp:BoundField DataField="salary" HeaderText="Salary" />
                <asp:CommandField HeaderText="Apply To The Job" SelectText="Apply Now" 
                    ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <br />
        <br />
    </div>
    <div style="top: 256px; left: 824px; position: absolute; height: 137px; width: 340px; text-align: center; background-color: #FFFFFF">
        <span class="style6">SEARCH JOBS BY COMPANY</span><br />
        <br />
        <b>Select Your Dream Company:</b>
        <asp:DropDownList ID="ddcmp" runat="server" Height="19px" Width="106px">
        </asp:DropDownList>
&nbsp;<br />
        <br />
        <asp:Button ID="btncmp" runat="server" onclick="btncmp_Click" Text="Search" />
    </div>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    <div style="top: 151px; left: 15px; position: absolute; height: 55px; width: 786px">
   

        <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" 
            ImageUrl="~/images/HOMEBT.jpg" onclick="ImageButton1_Click" Width="111px" />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="53px" 
            ImageUrl="~/images/CSBT.jpg" onclick="ImageButton3_Click" />
        <asp:ImageButton ID="ImageButton4" runat="server" Height="53px" 
            ImageUrl="~/images/ABTBT.jpg" onclick="ImageButton4_Click" />
        <asp:ImageButton ID="ImageButton5" runat="server" Height="53px" 
            ImageUrl="~/images/CNTBT.jpg" onclick="ImageButton5_Click" />
        <asp:ImageButton ID="ImageButton6" runat="server" Height="53px" 
            ImageUrl="~/images/SIGNINBT.jpg" onclick="ImageButton6_Click" />
        <asp:ImageButton ID="ImageButton7" runat="server" Height="53px" 
            ImageUrl="~/images/SIGNUPBT.jpg" onclick="ImageButton7_Click" Width="110px" />
   

    </div>
    </form>
</body>
</html>
