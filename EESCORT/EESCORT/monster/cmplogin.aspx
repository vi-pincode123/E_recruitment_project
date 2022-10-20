<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cmplogin.aspx.cs" Inherits="cmplogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: large;
            font-style: italic;
            width: 131px;
        }
        .style3
        {
            font-size: large;
            font-weight: bold;
            font-style: italic;
            width: 131px;
        }
    </style>
</head>
<body background="images/www.jpg">
    <form id="form1" runat="server">
    <div style="height: 150px">
    
        <asp:Image ID="Image1" runat="server" Height="153px" 
            ImageUrl="~/images/head.jpg" Width="893px" />
    
    </div>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/jsreg.jpg" 
        
        style="top: 18px; left: 906px; position: absolute; height: 242px; width: 375px" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login Box HTML Code - www.PSDGraphics.com</title>

<link href="login-box.css" rel="stylesheet" type="text/css" />
    <div style="width: 775px; height: 74px">


<div style="padding: 100px 0 0 250px;">


<div id="login-box">

<H2>&nbsp;Login</H2>
<br />
<br />
    <table class="style1">
        <tr>
            <td class="style2">
                <b>USER NAME:</td>
                        <td>
                            <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                            </b>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            PASSWORD:</td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Label ID="lbl1" runat="server"></asp:Label>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/login-btn.png" onclick="ImageButton1_Click" Width="91px" />
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server">forget my password</asp:HyperLink>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/Company/companyregn.aspx" style="color: #FFFFFF">signup</asp:HyperLink>






</div>

    <div style="top: 167px; left: 381px; position: absolute; height: 55px; width: 522px">
   

        <asp:ImageButton ID="ImageButton9" runat="server" Height="53px" 
            ImageUrl="~/images/HOMEBT.jpg" onclick="ImageButton9_Click" Width="127px" />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="53px" 
            ImageUrl="~/images/CSBT.jpg" onclick="ImageButton3_Click" />
        <asp:ImageButton ID="ImageButton4" runat="server" Height="53px" 
            ImageUrl="~/images/ABTBT.jpg" onclick="ImageButton4_Click" />
        <asp:ImageButton ID="ImageButton5" runat="server" Height="53px" 
            ImageUrl="~/images/CNTBT.jpg" onclick="ImageButton5_Click" />
   

    </div>

</div>















    </div>
</head>

<body>















    </form>
    














</body>
</html>
