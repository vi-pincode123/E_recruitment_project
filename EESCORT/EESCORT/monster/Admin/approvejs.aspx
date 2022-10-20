<%@ Page Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="approvejs.aspx.cs" Inherits="Admin_approvejs" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" Ba>
    <p style="height: 426px; width: 964px; top: 3px; left: 3px; position: absolute; background-color: #000099">
    &nbsp;&nbsp;<asp:GridView ID="gridjs" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="3" CellSpacing="1" DataKeyNames="usname" GridLines="None" 
        onselectedindexchanged="gridjs_SelectedIndexChanged" 
        style="top: 65px; left: 316px; position: absolute; height: 162px; width: 349px; right: 299px;">
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="usname" HeaderText="User Name" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="email" HeaderText="E-Mail ID" />
            <asp:CommandField HeaderText="Approve/Reject" SelectText="Approve" 
                ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>
</p>
</asp:Content>

