<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="finallist.aspx.cs" Inherits="JobSeeker_finallist" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 328px; width: 1041px; top: -5px; left: 0px; position: absolute; text-align: left; font-weight: 700; font-style: italic; font-size: x-large; font-family: 'Courier New', Courier, monospace; color: #FFFFFF; background-color: #000099; z-index: -1;">
        <span class="style2">FINAL RESULT <asp:GridView ID="gd1" runat="server" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="White" 
        BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
        DataKeyNames="regno" GridLines="None" 
        onselectedindexchanged="gd1_SelectedIndexChanged" 
        
        
            style="top: 100px; left: 181px; position: absolute; height: 133px; width: 421px; font-family: 'Times New Roman', Times, serif; font-size: medium; right: 439px;">
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="regno" HeaderText="Register No" />
            <asp:BoundField DataField="compid" HeaderText="Company" />
            <asp:BoundField DataField="jobtitle" HeaderText="Job Name" />
            <asp:BoundField DataField="finstatus" HeaderText="Status" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>
        &nbsp;<br />
    </span>
</p>
</asp:Content>

