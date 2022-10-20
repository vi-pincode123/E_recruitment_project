<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="intschedule.aspx.cs" Inherits="JobSeeker_intschedule" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
        width: 606px;
        background-color: #A2A2C1;
    }
        .style2
        {
            text-align: center;
        background-color: #A2A2C1;
    }
        .style5
        {
        width: 482px;
        background-color: #A2A2C1;
    }
        .style6
        {
            text-align: center;
            font-size: x-large;
            font-family: "Courier New", Courier, monospace;
            text-decoration: underline;
        background-color: #A2A2C1;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 296px; width: 1044px; top: 4px; left: 0px; position: absolute; background-color: #000099">
        &nbsp;&nbsp;<table class="style1" 
            
            style="top: 97px; left: 331px; position: absolute; height: 94px; width: 394px; font-size: small; font-family: 'Times New Roman', Times, serif; background-color: #9D9DBD">
            <tr>
                <td class="style6" colspan="2">
                    INTERVIEW</td>
            </tr>
            <tr>
                <td class="style5">
                    Register No:</td>
                <td class="style3">
                    <asp:TextBox ID="txtrn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Selct Company:</td>
                <td class="style3">
                    <asp:DropDownList ID="ddcomp" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

