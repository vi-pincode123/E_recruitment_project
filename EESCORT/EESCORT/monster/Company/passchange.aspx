<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passchange.aspx.cs" Inherits="passchange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 49%;
            top: 270px;
            left: 346px;
            position: absolute;
            height: 163px;
            background-color: #FFFFCC;
        }
        .style2
        {
            text-align: center;
            width: 240px;
        }
        .style3
        {
            text-align: center;
            height: 34px;
        }
    </style>
<script language="javascript" type="text/javascript">
// <!CDATA[

function btnchange_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2" style="text-align: center">
                User Name:</td>
            <td>
                <asp:TextBox ID="txtus" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" style="text-align: center">
                Old Password:</td>
            <td>
                <asp:TextBox ID="txtopass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" style="text-align: center">
                New Password:</td>
            <td>
                <asp:TextBox ID="txtnpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" style="text-align: center">
                Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtcpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnpass" ControlToValidate="txtcpass" 
                    ErrorMessage="plz confirm password"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="Button1" runat="server" Text="Change" onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" 
                    Text="Clear" />
                &nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</form>
</body>
</html>
