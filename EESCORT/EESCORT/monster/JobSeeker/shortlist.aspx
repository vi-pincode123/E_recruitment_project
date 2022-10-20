<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="shortlist.aspx.cs" Inherits="JobSeeker_shortlist" Title="Untitled Page" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 307px; width: 1033px; top: 5px; left: 0px; position: absolute; background-color: #000099">
    &nbsp;&nbsp;<table class="style1" 
        
            
            style="top: 97px; left: 323px; position: absolute; height: 100px; width: 306px; background-color: #BABAD1;">
        <tr>
            <td class="style6" colspan="2">
                SHORT LIST</td>
        </tr>
        <tr>
            <td class="style7">
                Company:</td>
            <td class="style7">
                <asp:DropDownList ID="ddcomp" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddcomp_SelectedIndexChanged1">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Job Title:</td>
            <td class="style7">
                <asp:DropDownList ID="ddjob" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="view" />
            </td>
        </tr>
    </table>
</p>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style5
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        text-align: center;
    }
        .style6
        {
            font-size: x-large;
            text-decoration: underline;
            text-align: center;
        }
        .style7
        {
            height: 32px;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        text-align: center;
    }
    </style>

</asp:Content>


