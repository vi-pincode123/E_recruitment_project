<%@ Page Language="C#" MasterPageFile="~/JobSeeker/exam.master" AutoEventWireup="true" CodeFile="score.aspx.cs" Inherits="JobSeeker_score" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style1
    {
        width: 39%;
            top: 108px;
            left: 271px;
            position: absolute;
            height: 69px;
            background-color: #9D9DBD;
        }
        .style2
        {
            font-size: x-large;
            font-family: "Courier New", Courier, monospace;
            font-weight: bold;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p style="height: 286px; width: 994px; background-color: #000099">
        &nbsp;&nbsp;<table class="style1">
            <tr>
                <td class="style2" colspan="2" style="text-align: center">
                    YOUR RESULT</td>
            </tr>
            <tr>
                <td>
                    Max. Score:</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Your Score:</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>


