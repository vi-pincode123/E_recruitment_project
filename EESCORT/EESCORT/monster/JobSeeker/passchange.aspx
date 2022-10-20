<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="passchange.aspx.cs" Inherits="JobSeeker_passchange" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 273px; width: 1045px; background-color: #000099">
    &nbsp;&nbsp;<table class="style1" 
        style="font-size: medium; font-family: 'Times New Roman', Times, serif; top: 81px; left: 166px; position: absolute; height: 167px; width: 516px; background-color: #A6A6C4">
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Change" />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Clear" />
                &nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>

