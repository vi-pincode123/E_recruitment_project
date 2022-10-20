<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body background="images/www.jpg">
    <form id="form1" runat="server">
    <div style="height: 180px">
    
        &nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="175px" 
            ImageUrl="~/images/head.jpg" 
            style="top: 15px; left: 14px; position: absolute; width: 886px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/mainpic.jpg" 
            style="top: 15px; left: 905px; position: absolute; height: 311px; width: 316px" />
    <div style="top: 201px; left: 13px; position: absolute; height: 55px; width: 886px">
   

        <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" 
            ImageUrl="~/images/HOMEBT.jpg" onclick="ImageButton1_Click" Width="111px" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="53px" 
            ImageUrl="~/images/SEARBT.jpg" onclick="ImageButton2_Click" />
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
    
    </div>
    </form>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</body>
</html>

