<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="finalresult.aspx.cs" Inherits="JobSeeker_finalresult" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
        width: 103px;
        font-size: medium;
        font-family: "Times New Roman", Times, serif;
        background-color: #A2A2C1;
    }
        .style2
        {
            text-align: center;
        font-size: medium;
        font-family: "Times New Roman", Times, serif;
        background-color: #A2A2C1;
    }
        .style4
    {
        font-size: medium;
        font-family: "Times New Roman", Times, serif;
        background-color: #A2A2C1;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 330px; width: 1046px; top: 5px; left: 0px; position: absolute; background-color: #000099">
    &nbsp;&nbsp;<table class="style1" 
        style="top: 71px; left: 336px; position: absolute; height: 86px; width: 336px">
        <tr>
            <td class="style3">
                Company:</td>
            <td class="style4">
                <asp:DropDownList ID="ddcomp" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddcomp_SelectedIndexChanged1">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Job Title:</td>
            <td class="style4">
                <asp:DropDownList ID="ddjob" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="view" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</p>
</asp:Content>

