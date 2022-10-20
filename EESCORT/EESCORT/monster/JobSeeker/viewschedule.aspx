<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="viewschedule.aspx.cs" Inherits="JobSeeker_viewschedule" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            text-align: center;
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
            background-color: #A0A0C0;
        }
        .style3
        {
            text-align: center;
            text-decoration: underline;
            background-color: #A0A0C0;
        }
        .style4
        {
            background-color: #A0A0C0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 310px; width: 1025px; top: 7px; left: 0px; position: absolute; background-color: #000066">
        &nbsp;&nbsp;<table class="style1" 
            style="top: 34px; left: 206px; position: absolute; height: 160px; width: 556px; background-color: #666666">
            <tr>
                <td class="style3" colspan="2">
                    SCHEDULE OF EXAM</td>
            </tr>
            <tr>
                <td class="style2">
                    Reg No:</td>
                <td class="style4">
                    <asp:Label ID="lb5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Company Name:</td>
                <td class="style4">
                    <asp:Label ID="lb1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Job Name:</td>
                <td class="style4">
                    <asp:Label ID="lb2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date:</td>
                <td class="style4">
                    <asp:Label ID="lb3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Syllabus:</td>
                <td class="style4">
                    <asp:Label ID="lb4" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

