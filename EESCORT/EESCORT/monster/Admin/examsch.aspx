<%@ Page Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="examsch.aspx.cs" Inherits="Admin_examsch" Title="Untitled Page" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 647px; background-color: #000099">
        &nbsp;&nbsp;<table class="style1" 
            
            
            style="width: 64%; height: 233px; top: 92px; left: 144px; position: absolute; background-color: #ACACC8;" 
            align="center">
            <tr>
                <td class="style21" colspan="2">
                    &nbsp;<span class="style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span><span class="style23"><span class="style19">&nbsp;SCHEDULE OF ONLINE EXAM</span></span></td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp; Company:</td>
                <td class="style5">
                    <asp:DropDownList ID="ddcomp" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddcomp_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp; Job Title:</td>
                <td class="style5">
                    <asp:DropDownList ID="ddjob" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp; Date Of Exam:</td>
                <td class="style5">
                    <asp:TextBox ID="txtdt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp; Syllabus of Exam:</td>
                <td class="style5">
                    <asp:TextBox ID="txtsyll" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style18" colspan="2">
                    <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="Submit" 
                        style="text-align: center" />
                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1">CHECK 
                    SCHEDULE</asp:LinkButton>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style4
        {
            width: 169px;
        }
        .style5
        {
            width: 466px;
        }
        .style18
        {
            text-align: center;
        }
        .style19
        {
            font-size: x-large;
            font-family: "Courier New", Courier, monospace;
            font-weight: bold;
            text-decoration: underline;
        }
    .style20
    {
        width: 418px;
        font-size: large;
        font-style: italic;
        font-family: "Courier New", Courier, monospace;
    }
    </style>

</asp:Content>


