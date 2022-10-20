<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="academic.aspx.cs" Inherits="JobSeeker_academic" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style13
        {
            text-align: left;
            background-color: #9E9EBE;
            font-style: italic;
            text-decoration: underline;
            font-weight: bold;
        }
        .style12
        {
            text-align: left;
            background-color: #9E9EBE;
            width: 257px;
        }
        .style8
        {
            width: 283px;
            background-color: #9E9EBE;
        }
        .style4
        {
            text-align: left;
            width: 257px;
            height: 21px;
            background-color: #9E9EBE;
        }
        .style5
        {
            height: 21px;
            width: 283px;
            background-color: #9E9EBE;
        }
        .style6
        {
            text-align: center;
            width: 257px;
            height: 32px;
            background-color: #9E9EBE;
        }
        .style7
        {
            height: 32px;
            width: 283px;
            background-color: #9E9EBE;
        }
        .style3
        {
            text-align: center;
            background-color: #9E9EBE;
        }
        .style14
        {
            text-align: left;
            background-color: #9E9EBE;
            width: 257px;
            height: 49px;
        }
        .style15
        {
            width: 283px;
            background-color: #9E9EBE;
            height: 49px;
        }
        .style16
        {
            text-align: left;
            background-color: #9E9EBE;
            width: 257px;
            height: 60px;
        }
        .style17
        {
            width: 283px;
            background-color: #9E9EBE;
            height: 60px;
        }
        .style18
        {
            text-align: left;
            background-color: #9E9EBE;
            width: 257px;
            height: 45px;
        }
        .style19
        {
            width: 283px;
            background-color: #9E9EBE;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 1305px; width: 1040px; background-color: #000066">
        &nbsp;&nbsp;<table border="1" class="style1" 
            
            
            style="height: 834px; width: 844px; top: 87px; left: 89px; position: absolute; font-size: medium; font-family: 'Times New Roman', Times, serif; background-color: #FFFFFF">
            <tr>
                <td class="style13" colspan="2">
                    Academic Details</td>
            </tr>
            <tr>
                <td class="style12">
                    Course</td>
                <td class="style8">
                    <asp:DropDownList ID="slcourse" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="slcourse_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    College</td>
                <td class="style8">
                    <asp:TextBox ID="txtclg" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    University</td>
                <td class="style8">
                    <asp:DropDownList ID="sluty" runat="server">
                        <asp:ListItem>......Select.....</asp:ListItem>
                        <asp:ListItem>Kerala university</asp:ListItem>
                        <asp:ListItem>kochin uty</asp:ListItem>
                        <asp:ListItem>calicut</asp:ListItem>
                        <asp:ListItem>IGNOU</asp:ListItem>
                        <asp:ListItem>Delhi uty</asp:ListItem>
                        <asp:ListItem>Kannur uty</asp:ListItem>
                        <asp:ListItem>Anna Malai uty</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Branch</td>
                <td class="style8">
                    <asp:DropDownList ID="slbranch" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="slbranch_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Semester:</td>
                <td class="style5">
                    <asp:TextBox ID="txtsem" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Marks Obtained in Each Sem:</td>
                <td class="style7">
                    S1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    S2:<br />
                    <asp:TextBox ID="txts1" runat="server" Width="92px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txts2" runat="server" Width="88px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style16">
                                </td>
                                <td class="style17">
                                    S3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    S4:<br />
                                    <asp:TextBox ID="txts3" runat="server" Width="96px"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txts4" runat="server" Width="87px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style14">
                                </td>
                                <td class="style15">
                                    S5:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    S6:<br />
                                    <asp:TextBox ID="txts5" runat="server" Width="95px"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txts6" runat="server" Width="89px"></asp:TextBox>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style18">
                                </td>
                                <td class="style19">
                                    S7:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    S8:<br />
                                    <asp:TextBox ID="txts7" runat="server" Width="93px"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txts8" runat="server" Width="89px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style12">
                                    (%)Mark in SSLC</td>
                <td class="style8">
                    <asp:TextBox ID="txtsslc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Year of Passing</td>
                <td class="style8">
                    <asp:TextBox ID="txtsyear" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    (%)Mark in +2:</td>
                <td class="style8">
                    <asp:TextBox ID="txtp2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Year of Passing:</td>
                <td class="style8">
                    <asp:TextBox ID="txtpyear" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Aggregrate mark in Common:</td>
                <td class="style8">
                    <asp:TextBox ID="txtagr" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Date of&nbsp; Joining the course</td>
                <td class="style8">
                    <asp:TextBox ID="txtdoj" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Date of completing the course:</td>
                <td class="style8">
                    <asp:TextBox ID="txtdoc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Work Experiences if any:</td>
                <td class="style8">
                    <asp:TextBox ID="txtexp" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    <asp:Button ID="Btnsubmit" runat="server" onclick="Btnsubmit_Click" 
                        Text="Submit" style="width: 61px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btncancel" runat="server" Text="cancel" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

