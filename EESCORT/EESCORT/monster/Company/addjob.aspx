<%@ Page Language="C#" MasterPageFile="~/Company/cmpmaster.master" AutoEventWireup="true" CodeFile="addjob.aspx.cs" Inherits="Company_addjob" Title="Untitled Page" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center; height: 386px; background-color: #003399; width: 1019px;">
    <table class="style1" 
            style="top: 79px; left: 363px; position: absolute; height: 133px; width: 341px">
        <tr>
            <td class="style5" colspan="2">
                POST JOBS</td>
        </tr>
        <tr>
            <td class="style4">
                Company:</td>
            <td class="style3">
                <asp:Label ID="lblCompany" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Job Name:</td>
            <td class="style3">
                <asp:TextBox ID="txtjob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <span class="style6"><span class="style8">
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" />
                </span></span><span class="style8">&nbsp; </span>
            </td>
        </tr>
    </table>
    </p>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style2
        {
            font-style: italic;
            font-weight: bold;
            background-color: #A6A6C4;
        }
        .style3
        {
            text-align: left;
            background-color: #A6A6C4;
        }
        .style4
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            background-color: #A6A6C4;
        }
        .style5
        {
            text-align: center;
            text-decoration: underline;
            background-color: #A6A6C4;
        }
    </style>

</asp:Content>


