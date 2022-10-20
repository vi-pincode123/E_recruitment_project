<%@ Page Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="sendexsch.aspx.cs" Inherits="Company_sendexsch" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style8
        {
            width: 198px;
        }
        .style6
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: normal;
        }
        .style5
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style7
        {
            width: 220px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" 
            style="height: 113px; width: 45%; top: 122px; left: 157px; position: absolute; background-color: #B8B8CF;">
        <tr>
            <td class="style4" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style4">SEND SCHEDULES</span><asp:GridView ID="GridView1" 
                        runat="server" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="usname" ForeColor="#333333" GridLines="None" 
                        onrowcommand="GridView1_RowCommand" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged1" 
                        
                        style="top: 190px; left: 7px; position: absolute; height: 61px; width: 382px; background-color: #B8B8CF;" 
                        CssClass="style4">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="usname" HeaderText="Name" />
                        <asp:TemplateField HeaderText="Submit">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnSubmit" runat="server" 
                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" 
                                        CommandName="Submit" Text='<%# Bind("usname") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <EditItemTemplate>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style6">Company:</span></td>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style6">
                    Job Title:</span></td>
            <td class="style7">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Send Schedule" />
            </td>
        </tr>
    </table>
</asp:Content>

