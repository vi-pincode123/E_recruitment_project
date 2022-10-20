<%@ Page Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="approvecompany.aspx.cs" Inherits="Admin_approvecompany" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center; height: 297px; top: 11px; left: 3px; position: absolute; width: 962px; background-color: #000099">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:GridView ID="gridapprovecomp" 
            runat="server" AutoGenerateColumns="False" 
        CellPadding="3" DataKeyNames="compid" 
        onselectedindexchanged="gridapprovecomp_SelectedIndexChanged" 
        
        
        style="top: 64px; left: 65px; position: absolute; height: 129px; width: 892px; background-color: #666699; margin-top: 5px;" 
        BorderStyle="Ridge" Caption="APPROVE COMPANIES" BackColor="White" 
            BorderColor="White" BorderWidth="2px" CellSpacing="1" GridLines="None">
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="compid" HeaderText="User Name" />
            <asp:BoundField DataField="cname" HeaderText="Company Name" />
            <asp:BoundField DataField="cdes" HeaderText="Description" />
            <asp:BoundField DataField="caddr" HeaderText="Address" />
            <asp:BoundField DataField="cemail" HeaderText="E-Mail" />
            <asp:BoundField DataField="curl" HeaderText="Website" />
            <asp:CommandField HeaderText="Approve/Discard" SelectText="Approve" 
                ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>
</p>
</asp:Content>

