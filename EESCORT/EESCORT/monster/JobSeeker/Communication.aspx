<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="Communication.aspx.cs" Inherits="JobSeeker_Communication" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 165px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 1325px; width: 1007px; background-color: #000099">
        &nbsp;&nbsp;<table class="style1" 
            style="font-size: medium; font-family: 'Times New Roman', Times, serif; top: 57px; left: 22px; position: absolute; height: 1202px; width: 740px; background-color: #B4B4CD">
            <tr>
                <td class="style2">
                    <b>Communication</b></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="grdinbox" runat="server" AutoGenerateColumns="False" 
                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                        CellPadding="4" CellSpacing="2" ForeColor="Black" Height="168px" 
                        onrowcommand="grdinbox_RowCommand" onrowdatabound="grdinbox_RowDataBound" 
                        onselectedindexchanged="grdinbox_SelectedIndexChanged" Width="324px">
                        <FooterStyle BackColor="#CCCCCC" />
                        <RowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Select" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblId" runat="server" Text='<%# Bind("Id")%>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkinboxselect" runat="server" />
                                </ItemTemplate>
                                <FooterStyle Font-Bold="True" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="FromID" HeaderText="From">
                                <FooterStyle Font-Bold="True" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Subject">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnksubject" runat="server" 
                                        CommandArgument='<%# Bind("Id")%>' CommandName="View"><%# Eval("Subject")%></asp:LinkButton>
                                </ItemTemplate>
                                <FooterStyle Font-Bold="True" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="MDate" HeaderText="Date">
                                <FooterStyle Font-Bold="True" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Status" Visible="False">
                                <ItemTemplate>
                                    <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("MailStatus")%>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="lnkinbox" runat="server" Font-Bold="True" 
                        onclick="lnkinbox_Click">Inbox</asp:LinkButton>
                    <asp:Label ID="lblinboxstatus" runat="server"></asp:Label>
                </td>
                <td rowspan="4">
                    <asp:Panel ID="pnlinbox" runat="server" Height="241px">
                        <table class="style3">
                            <tr>
                                <td class="style8">
                                    <asp:CheckBox ID="chkinboxselect0" runat="server" AutoPostBack="True" 
                                        Font-Bold="True" oncheckedchanged="chkinboxselect_CheckedChanged" 
                                        Text="Select All" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lnkinboxdelete" runat="server" Font-Bold="True" 
                                        onclick="lnkinboxdelete_Click">Delete</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="lnkcomposemail" runat="server" Font-Bold="True" 
                        onclick="lnkcomposemail_Click">ComposeMail</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:LinkButton ID="lnksentmail" runat="server" Font-Bold="True" 
                        onclick="lnksentmail_Click">SentMail</asp:LinkButton>
                    <asp:Label ID="lblsentstatus" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" rowspan="7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="pnlview" runat="server" Height="177px">
                        <table class="style3">
                            <tr>
                                <td class="style9">
                                    Subject</td>
                                <td class="style10">
                                    <asp:Label ID="lblviewsubject" runat="server" Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    Date</td>
                                <td class="style12">
                                    <asp:Label ID="lblviewdate" runat="server" Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    From</td>
                                <td class="style14">
                                    <asp:Label ID="lblviewfrom" runat="server" Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    To</td>
                                <td class="style16">
                                    <asp:Label ID="lblviewto" runat="server" Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style15">
                                    Content</td>
                                <td class="style16">
                                    <asp:Label ID="lblviewcontent" runat="server" Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    <b>
                                    <asp:Button ID="btnreply" runat="server" Font-Bold="True" 
                                        onclick="btnreply_Click" Text="Reply" />
                                    </b>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="pnlcompose" runat="server" Height="216px">
                        <table class="style3">
                            <tr>
                                <td class="style6">
                                    To</td>
                                <td>
                                    <asp:Label ID="lblcomposeto" runat="server" Font-Bold="True" 
                                        Text="admin@pms.com"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    From</td>
                                <td>
                                    <asp:Label ID="lblcomposefrom" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    Subject</td>
                                <td>
                                    <asp:TextBox ID="txtcomposesubject" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    Content</td>
                                <td>
                                    <asp:TextBox ID="txtcomposecontent" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6" colspan="2">
                                    <asp:Button ID="btnsent" runat="server" Font-Bold="True" 
                                        onclick="btnsent_Click" Text="Sent" />
                                    &nbsp;&nbsp;&nbsp;<asp:Button ID="btnclear" runat="server" Font-Bold="True" 
                                        onclick="btnclear_Click" Text="Clear" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td rowspan="9">
                    <asp:Panel ID="pnlsent" runat="server" Height="252px">
                        <table class="style3">
                            <tr>
                                <td class="style7">
                                    <asp:CheckBox ID="chksentselect" runat="server" AutoPostBack="True" 
                                        Font-Bold="True" oncheckedchanged="chksentselect_CheckedChanged" 
                                        Text="Select All" />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="lnksentdelete" runat="server" Font-Bold="True" 
                                        onclick="lnksentdelete_Click">Delete</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="grdsentbox" runat="server" AutoGenerateColumns="False" 
                                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                                        CellPadding="4" CellSpacing="2" ForeColor="Black" Height="151px" 
                                        onrowcommand="grdsentbox_RowCommand" Width="300px">
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <RowStyle BackColor="White" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Select" Visible="False">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblId0" runat="server" Text='<%# Bind("Id")%>' Visible="false"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Select">
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="sentselect" runat="server" />
                                                </ItemTemplate>
                                                <FooterStyle Font-Bold="True" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="ToId" HeaderText="To">
                                                <FooterStyle Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Subject">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnksubject0" runat="server" 
                                                        CommandArgument='<%# Bind("Id")%>' CommandName="View"><%# Eval("Subject")%></asp:LinkButton>
                                                </ItemTemplate>
                                                <FooterStyle Font-Bold="True" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="MDate" HeaderText="Date">
                                                <FooterStyle Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="Status" Visible="False">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblstatus0" runat="server" Text='<%# Eval("MailStatus")%>'>
                                                    </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

