<%@ Page Language="C#" MasterPageFile="~/Company/cmpmaster.master" AutoEventWireup="true" CodeFile="finallist.aspx.cs" Inherits="Company_finallist" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 519px; width: 1021px; text-align: center; background-color: #000099">
        &nbsp;&nbsp;<asp:GridView ID="gd2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" CellSpacing="1" DataKeyNames="regno" GridLines="None" 
            onselectedindexchanged="gd2_SelectedIndexChanged" 
            
            style="top: 83px; left: 254px; position: absolute; height: 133px; width: 372px; z-index: 1;">
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="regno" HeaderText="Register No:" />
                <asp:BoundField DataField="compid" HeaderText="Company" />
                <asp:BoundField DataField="jobtitle" HeaderText="Job Name" />
                <asp:BoundField DataField="mark" HeaderText="Mark" />
                <asp:BoundField DataField="status" HeaderText="Result" />
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

