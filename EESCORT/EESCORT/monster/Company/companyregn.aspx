<%@ Page Language="C#" AutoEventWireup="true" CodeFile="companyregn.aspx.cs" Inherits="companyregn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 60%;
            top: 309px;
            left: 280px;
            position: absolute;
            height: 476px;
            background-color: #D7D7E3;
        }
        .style2
        {
            text-align: center;
            height: 5px;
        }
        .style3
        {
            font-style: italic;
            text-decoration: underline;
            text-align: center;
            color: #FF3300;
        }
        .style4
        {
            text-align: left;
            font-style: italic;
            text-decoration: underline;
            font-weight: bold;
        }
        .style5
        {
            text-align: center;
            width: 294px;
        }
        .style6
        {
            font-style: italic;
            text-decoration: underline;
            font-weight: bold;
        }
        .style7
        {
            text-align: center;
            width: 294px;
            height: 15px;
        }
        .style8
        {
            height: 15px;
            margin-left: 80px;
        }
        .style9
        {
            font-size: xx-large;
            font-weight: bold;
            font-family: "Courier New", Courier, monospace;
        }
    </style>
</head>
<body style="background-color: #66CCFF" background="../images/www.jpg">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3" colspan="2">
                All Fields Marked &#39;*&#39; Are Mandatory Fields</td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                Account Informations:</td>
        </tr>
        <tr>
            <td class="style5">
                User Name:</td>
            <td>
                <asp:TextBox ID="txtun" runat="server"></asp:TextBox>
                <asp:Label ID="lblUser" runat="server"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtun" ErrorMessage="* Value Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Password:</td>
            <td>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPass" ErrorMessage="* Value Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtcpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                    ErrorMessage="same value required"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                Company Informations</td>
        </tr>
        <tr>
            <td class="style5">
                Company Name:</td>
            <td>
                <asp:TextBox ID="txtcname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcname" ErrorMessage="* Enter Company Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Description:</td>
            <td>
                <asp:TextBox ID="txtcdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Communication Address:</td>
            <td>
                <asp:TextBox ID="txtcaddrs" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Place:</td>
            <td>
                <asp:TextBox ID="txtplace" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                                Phone No:</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Mobile No:</td>
            <td>
                <asp:TextBox ID="txtmob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                E-Mail ID:</td>
            <td>
                <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmail" ErrorMessage="Invalid E-Mail ID" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtmail" ErrorMessage="* Value required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Website URL:</td>
            <td>
                <asp:TextBox ID="txturl" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txturl" ErrorMessage="Invalid Website URL" 
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txturl" ErrorMessage="* Value Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" />
&nbsp;&nbsp;
                </td>
        </tr>
    </table>
    <div style="height: 154px; text-align: center; top: 12px; left: 105px; position: absolute; width: 1084px; background-color: #66CCFF">
    
        <asp:Image ID="Image1" runat="server" Height="150px" 
            ImageUrl="~/images/head.jpg" 
            style="height: 154px; text-align: center; top: 0px; left: -1px; position: absolute; width: 803px; right: 282px; background-color: #66CCFF" />
        <div class="style9" 
            style="top: 160px; left: -3px; position: absolute; height: 55px; width: 1084px; color: #FFFFFF; background-color: #000099">
            COMPANY REGISTRATION</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="112px" 
            ImageUrl="~/images/companyProfileMain.jpg" 
            style="height: 154px; text-align: center; top: 0px; left: 802px; position: absolute; width: 281px; background-color: #66CCFF" />
    
    </div>
    <div style="top: 238px; left: 316px; position: absolute; height: 56px; width: 661px">
   

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
   

    </div>
    </form>
</body>
</html>
