<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="viewintschedule.aspx.cs" Inherits="JobSeeker_viewintschedule" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 365px; width: 1059px; top: -4px; left: 0px; position: absolute; background-color: #000099">
        &nbsp;&nbsp;<table class="style1" 
            
            
            
            style="width: 477px; top: 104px; left: 330px; position: absolute; height: 203px; background-color: #A2A2C1;">
            <tr class="style2">
                <td class="style7" colspan="2">
                    Interview Schedule</td>
            </tr>
            <tr class="style4">
                <td class="style5">
                    Reg No:</td>
                <td class="style2">
                    <asp:Label ID="lb1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr class="style4">
                <td class="style6">
                    Company:</td>
                <td class="style2">
                    <asp:Label ID="lb2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr class="style4">
                <td class="style3">
                    JobName:</td>
                <td class="style2">
                    <asp:Label ID="lb3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr class="style4">
                <td class="style3">
                    Place of Interview:</td>
                <td class="style2">
                    <asp:Label ID="lb4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr class="style4">
                <td class="style3">
                    Date of Interview:</td>
                <td class="style2">
                    <asp:Label ID="lb5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr class="style4">
                <td class="style3">
                    Time of Interview:</td>
                <td class="style2">
                    <asp:Label ID="lb6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style2
    {
        width: 70px;
    }
    .style3
    {
        width: 141px;
        font-size: medium;
    }
    .style4
    {
        width: 70px;
        font-size: medium;
        font-family: "Times New Roman", Times, serif;
    }
    .style5
    {
        width: 141px;
        font-size: medium;
        font-family: "Times New Roman", Times, serif;
    }
    .style6
    {
        width: 141px;
    }
    .style7
    {
        text-decoration: underline;
    }
</style>


</asp:Content>


