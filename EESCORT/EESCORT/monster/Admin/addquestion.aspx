<%@ Page Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="addquestion.aspx.cs" Inherits="Admin_addquestion" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 808px; width: 985px; top: 3px; left: 3px; position: absolute; background-color: #000066">
    &nbsp;&nbsp;<table class="style1" 
        
            style="top: 188px; left: 285px; position: absolute; height: 110px; width: 47%; background-color: #A2A2C1">
        <tr>
            <td class="style8" colspan="2">
                ADD QUESTION</td>
        </tr>
        <tr>
            <td class="style5">
                Company Name:</td>
            <td class="style6">
                <asp:DropDownList ID="ddcomp" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddcomp_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Job Name:</td>
            <td class="style2">
                <asp:DropDownList ID="ddjob" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddjob_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <table class="style4" 
        
            
            style="top: 308px; left: 32px; position: absolute; height: 25px; width: 919px; font-size: medium; font-family: 'Times New Roman', Times, serif; background-color: #A2A2C1">
        <tr>
            <td class="style6">
                Add Question:</td>
            <td class="style9">
                <asp:TextBox ID="txtqns" runat="server" TextMode="MultiLine" Width="270px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Answer Choices:</td>
            <td class="style10">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                choice1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;choice2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; choice3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; choice4<br />
                <asp:TextBox ID="txtch1" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtch2" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtch3" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtch4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Correct Answer:</td>
            <td class="style10">
                <asp:TextBox ID="txtans" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" 
                    Text="Add Question" />
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Clear" />
            </td>
        </tr>
    </table>
</p>
</asp:Content>

