<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="JobSeeker_notification" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p style="height: 387px; width: 1036px; font-weight: 700; margin-top: 0px; background-color: #000099">
        &nbsp;
        &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderStyle="Ridge" Caption="NOTIFICATIONS" 
            CellPadding="3" DataKeyNames="compid" GridLines="None" 
            onrowcommand="GridView1_RowCommand" 
                       
            style="top: 74px; left: 216px; position: absolute; height: 133px; width: 647px" 
            BorderColor="White" BorderWidth="2px" CellSpacing="1">
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="cname" HeaderText="Company Name" />
                <asp:BoundField DataField="jobtitle" HeaderText="Job Name" />
                <asp:BoundField DataField="salary" HeaderText="Salary" />
                <asp:BoundField DataField="loc" HeaderText="Work Location" />
                <asp:BoundField DataField="des" HeaderText="Description" />
                <asp:BoundField DataField="compid" HeaderText="Company Id" />
                <asp:TemplateField HeaderText="Submit">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnSubmit" runat="server" 
                            CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" 
                            CommandName="Submit" Text='<%# Bind("compid") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <EditItemTemplate>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:GridView>
        </p>
</asp:Content>


