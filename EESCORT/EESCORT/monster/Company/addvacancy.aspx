<%@ Page Language="C#" MasterPageFile="~/Company/cmpmaster.master" AutoEventWireup="true" CodeFile="addvacancy.aspx.cs" Inherits="Company_addvacancy" Title="Untitled Page" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 496px; text-align: center; background-color: #000099">
    <br />
    <table class="style1" 
            style="top: 44px; left: 155px; position: absolute; height: 432px; width: 701px; background-color: #A4A4C1">
        <tr>
            <td class="style3" colspan="2">
                POST VACANCIES</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                Vacancy Details:</td>
        </tr>
        <tr>
            <td class="style7" style="text-align: center">
                Job Title:</td>
            <td class="style8">
                <asp:DropDownList ID="ddcomp" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddcomp_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style7" style="text-align: center">
                <span class="style4">Eligibility Criterias:</td>
            <td class="style5">
                <span class="style6">Course:</span>&nbsp;&nbsp; <span class="style6">
                <asp:DropDownList ID="slcourse" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="slcourse_SelectedIndexChanged">
                </asp:DropDownList>
                </span></span>&nbsp;<span class="style6"><br class="style4" />
                </span><span class="style4"><span class="style6">Branch:&nbsp;&nbsp;
                <asp:DropDownList ID="slbranch" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="slbranch_SelectedIndexChanged">
                </asp:DropDownList>
                </span></span>
            </td>
        </tr>
        <tr>
            <td class="style7" style="text-align: center">
                Recruiting Process:</td>
            <td class="style8">
                <asp:TextBox ID="txtprs" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="text-align: center">
                Salary:</td>
            <td class="style8">
                <asp:TextBox ID="txtsal" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="text-align: center">
                Work Location:</td>
            <td class="style8">
                <asp:TextBox ID="txtloc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="text-align: center">
                Other Description:</td>
            <td class="style8">
                <asp:TextBox ID="txtdec" runat="server" ontextchanged="txtdec_TextChanged" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="text-align: center">
                Number Of Vacancies:
            </td>
            <td class="style8">
                <asp:TextBox ID="txtvac" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="text-align: center">
                Duration of Recruitment Expected:</td>
            <td class="style11">
                <asp:TextBox ID="txtduration" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="style6">
            <td class="style4" style="text-align: center">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="style9">
                <span class="style10">
                <asp:Button ID="btnsub" runat="server" onclick="btnsub_Click" 
                    style="text-align: center" Text="Submit" />
                </span><span class="style6">&nbsp;
                </span><span class="style10">
                <asp:Button ID="btnreset" runat="server" Text="Reset" />
                </span>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style3
        {
            text-decoration: underline;
        }
        .style4
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style5
        {
            text-align: left;
            font-family: "Times New Roman", Times, serif;
        }
        .style6
        {
            font-size: medium;
        }
        .style7
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style8
        {
            text-align: left;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style9
        {
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style10
        {
            font-size: medium;
            font-style: italic;
            font-weight: bold;
        }
        .style11
        {
            text-align: left;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            font-style: italic;
            font-weight: bold;
        }
    </style>

</asp:Content>


