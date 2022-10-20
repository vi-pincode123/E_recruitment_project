<%@ Page Language="C#" MasterPageFile="~/Company/cmpmaster.master" AutoEventWireup="true" CodeFile="interviewsch.aspx.cs" Inherits="Company_interviewsch" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            background-color: #A0A0C0;
            text-align: center;
        }
        .style3
        {
            font-size: x-large;
            font-family: "Courier New", Courier, monospace;
        background-color: #A0A0C0;
            text-align: center;
        }
        .style4
        {
            width: 260px;
            background-color: #A0A0C0;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 423px; width: 1021px; text-align: center; background-color: #000066">
        &nbsp;&nbsp;<table class="style1" 
            
            style="top: 88px; left: 224px; position: absolute; height: 165px; width: 541px; font-size: medium; font-family: 'Times New Roman', Times, serif; background-color: #666666">
            <tr>
                <td class="style3" colspan="2">
                    INTERVIEW SCHEDULE</td>
            </tr>
            <tr>
                <td class="style4">
                    Job Title:</td>
                <td class="style2">
                    <asp:DropDownList ID="ddjob" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Place:</td>
                <td class="style2">
                    <asp:TextBox ID="txtpl" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Date:</td>
                <td class="style2">
                    <asp:TextBox ID="txtdt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Time:</td>
                <td class="style2">
                    <asp:TextBox ID="txtti" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:Button ID="btns" runat="server" onclick="btns_Click" Text="Submit" />
                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Send 
                    Schedule</asp:LinkButton>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

