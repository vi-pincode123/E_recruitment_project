<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jsregn.aspx.cs" Inherits="jsregn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 49%;
            font-weight: bold;
            font-style: italic;
            height: 86px;
            top: 229px;
            left: -50px;
            position: absolute;
            margin-left: 340px;
        }
        .style2
        {
            text-decoration: underline;
            color: #FFFFFF;
            font-size: x-large;
            width: 733px;
            background-color: #000099;
        }
        #form1
        {
            height: 125px;
            width: 1569px;
            background-color: #FFFFFF;
        }
        .style3
        {
            width: 49%;
            height: 781px;
            margin-left: 347px;
            margin-top: 73px;
            top: 248px;
            left: -58px;
            position: absolute;
            background-color: #D0D0DF;
        }
        .style4
        {
            text-align: left;
            font-weight: bold;
            font-style: italic;
            text-decoration: underline;
            background-color: #000099;
            color: #FFFFFF;
        }
        .style5
        {
            width: 516px;
        }
        .style6
        {
            text-align: left;
            background-color: #000099;
            color: #FFFFFF;
        }
        .style9
        {
            text-align: center;
            width: 187px;
        }
        .style10
        {
            font-style: italic;
            text-decoration: underline;
        }
        .style11
        {
            text-align: center;
            height: 28px;
        }
        .style12
        {
            width: 516px;
            height: 28px;
        }
        .style13
        {
            color: #FF3300;
            font-size: small;
            width: 733px;
        }
        .style14
        {
            text-align: center;
            width: 187px;
            height: 30px;
        }
        .style15
        {
            width: 516px;
            height: 30px;
        }
        .style16
        {
            width: 49%;
            top: 1178px;
            left: 286px;
            position: absolute;
            height: 88px;
            background-color: #C5C5D8;
        }
        .style17
        {
            color: #FF3300;
            font-style: italic;
            font-weight: bold;
            font-size: large;
        }
    </style>
</head>
<body style="background-color: #66CCFF" background="../images/www.jpg">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2" style="text-align: center; ">
                JOB SEEKKER REGISTRATION</td>
        </tr>
        <tr>
            <td class="style13" style="text-align: center; background-color: #FFCC00;">
                All fields marked with&nbsp; &#39;*&#39; are mandatory</td>
        </tr>
    </table>
  
    <table class="style3" border="1">
        <tr>
            <td class="style9">
                &nbsp;User Name: </td>
            <td class="style5">
                <asp:TextBox ID="txtUser" runat="server" Width="137px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUser" ErrorMessage="*value required"></asp:RequiredFieldValidator>
                <asp:Label ID="lbluser" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14">
                                Password:                       Password:</td>
            <td class="style15">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                                Confirm Password:</td>
            <td class="style5">
                <asp:TextBox ID="txtCpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPass" ControlToValidate="txtCpass" 
                    ErrorMessage="*same value required"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <h3>
                    Personal Informations:</h3>
            </td>
        </tr>
        <tr>
            <td class="style9">
                                                                Name:</td>
            <td class="style5">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*value required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Father&#39;s Name:</td>
            <td class="style5">
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Mother&#39;s Name:</td>
            <td class="style5">
                <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                                                                Date Of Birth:</td>
            <td class="style5">
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdob" ErrorMessage="*value required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Nationality:</td>
            <td class="style5">
                <asp:TextBox ID="txtnat" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Gender:</td>
            <td class="style5">
                <asp:RadioButtonList ID="radgen" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Category:</td>
            <td class="style5">
                <asp:TextBox ID="txtcat" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                <h3 class="style10">
                    Permanent Address:</h3>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Home Name:</td>
            <td class="style5">
                <asp:TextBox ID="txthaddr" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Place:</td>
            <td class="style5">
                <asp:TextBox ID="txthplace" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                District:</td>
            <td class="style5">
                <asp:TextBox ID="txtdist" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                State:</td>
            <td class="style5">
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                &nbsp;&nbsp; PIN:
                <asp:TextBox ID="txthpin" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator4" runat="server" 
                    ControlToValidate="txthpin" ErrorMessage="invalid pin code" MaximumValue="999999" 
                    MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <h3>
                    Address for communication:</h3>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Communication Address:</td>
            <td class="style5">
                <asp:TextBox ID="txtcaddr" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Place:</td>
            <td class="style5">
                <asp:TextBox ID="txtcplace" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                District:</td>
            <td class="style5">
                <asp:TextBox ID="txtcdist" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                State:</td>
            <td class="style5">
                <asp:TextBox ID="txtcst" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp; PIN:&nbsp;
                <asp:TextBox ID="txtcpin" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" 
                    ControlToValidate="txtcpin" ErrorMessage="invalid pin code" 
                    MaximumValue="999999"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Phone NO:</td>
            <td class="style5">
                <asp:TextBox ID="txtphno" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="txtphno" ErrorMessage="plz check the number" 
                    MaximumValue="9999999999"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Mobile NO:</td>
            <td class="style5">
                <asp:TextBox ID="txtmno" runat="server" CausesValidation="True" MaxLength="13"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtmno" ErrorMessage="*plz check the number" 
                    MaximumValue="9999999999"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                                E-Mail ID:</td>
            <td class="style12">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*plz given valid E-mail ID" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="style11" colspan="2">
            &nbsp;
                </td>
        </tr>
        </table>
  
    <table class="style16">
        <tr>
            <td class="style17" style="text-align: center">
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" style="text-align: center" />
            </td>
        </tr>
    </table>
  
    <div style="height: 150px">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/head.jpg" 
            style="top: 17px; left: 10px; position: absolute; height: 155px; width: 911px" />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/jsreg.jpg" 
            
            style="top: 15px; left: 923px; position: absolute; height: 152px; width: 378px" />
    <div style="top: 170px; left: 292px; position: absolute; height: 56px; width: 661px">
   

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
    </div>
  
  </form>  
</body>
</html>
