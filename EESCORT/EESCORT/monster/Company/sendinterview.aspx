<%@ Page Language="C#" MasterPageFile="~/Company/cmpmaster.master" AutoEventWireup="true" CodeFile="sendinterview.aspx.cs" Inherits="Company_sendinterview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        font-size: x-large;
        font-weight: bold;
        font-family: "Courier New", Courier, monospace;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 404px; width: 1013px; background-color: #000099">
    &nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="3" CellSpacing="1" DataKeyNames="regno" GridLines="None" 
        onrowcommand="GridView1_RowCommand" 
        onselectedindexchanged="GridView1_SelectedIndexChanged1" 
        
            style="top: 130px; left: 362px; position: absolute; height: 161px; width: 322px; z-index: 1;">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="regno" HeaderText="Register No:" />
            <asp:BoundField DataField="usname" HeaderText="Candidate Name" />
            <asp:TemplateField HeaderText="Send Schedule">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkbtnSubmit" runat="server" 
                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" 
                        CommandName="Submit" Text='<%# Bind("regno") %>'></asp:LinkButton>
                </ItemTemplate>
                <EditItemTemplate>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="jobtitle" HeaderText="Job Name" />
        </Columns>
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>
</p>
<div class="style2" 
    style="top: 92px; left: 194px; position: absolute; height: 19px; width: 649px; text-align: center; color: #FFFFFF">
    SEND INTERVIEW SCHEDULE</div>
</asp:Content>

