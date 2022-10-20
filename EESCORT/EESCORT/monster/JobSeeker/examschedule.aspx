<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="examschedule.aspx.cs" Inherits="JobSeeker_examschedule" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
        {
            text-align: center;
            text-decoration: underline;
        }
        .style3
        {
            width: 316px;
        }
        .style2
        {
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            font-weight: bold;
        }
        .style5
    {
            width: 218px;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 331px; width: 1023px; background-color: #000066">
    &nbsp;&nbsp;<table class="style1" 
        
            style="top: 89px; left: 237px; position: absolute; height: 94px; width: 483px; background-color: #9E9EBE">
        <tr>
            <td class="style4" colspan="2">
                EXAM SCHEDULE</td>
        </tr>
        <tr>
            <td class="style5">
                Company Name:</td>
            <td class="style3">
                <asp:DropDownList ID="ddcomp" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddcomp_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Job Name:</td>
            <td class="style3">
                <asp:DropDownList ID="ddjob" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="btnsu" runat="server" onclick="btnsu_Click" Text="Submit" />
            </td>
        </tr>
    </table>
</p>
</asp:Content>

