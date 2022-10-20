<%@ Page Language="C#" MasterPageFile="~/JobSeeker/exam.master" AutoEventWireup="true" CodeFile="examlogin.aspx.cs" Inherits="JobSeeker_examlogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 37%;
            top: 130px;
            left: 462px;
            position: absolute;
            height: 3px;
            background-color: #F7F7F7;
        }
        .style3
        {
            text-align: center;
            width: 168px;
        }
        .style2
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p style="height: 500px; width: 999px; background-color: #000099">
        &nbsp;&nbsp;<table class="style1">
            <tr>
                <td class="style3">
                    Reg No:</td>
                <td>
                    <asp:TextBox ID="txtrn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Company:</td>
                <td>
                    <asp:DropDownList ID="ddcomp" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddcomp_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Job Title:</td>
                <td>
                    <asp:DropDownList ID="ddjob" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:ImageButton ID="btnsub" runat="server" Height="27px" 
                        ImageUrl="~/images/STEXAMBT.png" onclick="btnsub_Click" />
                </td>
            </tr>
        </table>
        <asp:Image ID="Image4" runat="server" Height="340px" 
            ImageUrl="~/images/hand-and-green-button-thumb8973378.jpg" Width="451px" />
    </p>
</asp:Content>


