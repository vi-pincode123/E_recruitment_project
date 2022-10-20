<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Communication.aspx.cs" Inherits="Company_Communication" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 78%;
            top: 241px;
            left: 264px;
            position: absolute;
            height: 46px;
            background-color: #A6A6C4;
        }
        .style2
        {
            width: 165px;
        }
        .style3
        {
            width: 97%;
            height: 184px;
        }
        .style4
        {
            width: 91px;
        }
        .style6
        {
        }
        .style7
        {
            width: 91px;
            font-weight: bold;
            height: 29px;
        }
        .style8
        {
            height: 29px;
        }
        .style9
        {
            width: 91px;
            font-weight: bold;
            height: 27px;
        }
        .style10
        {
            height: 27px;
        }
        .style11
        {
            width: 91px;
            font-weight: bold;
            height: 24px;
        }
        .style12
        {
            height: 24px;
        }
        .style13
        {
            width: 91px;
            font-weight: bold;
            height: 23px;
        }
        .style14
        {
            height: 23px;
        }
        .style15
        {
            width: 91px;
            font-weight: bold;
            height: 25px;
        }
        .style16
        {
            height: 25px;
        }
        </style>
</head>
<body background="images/www.jpg" alink="#666699">
    <form id="form1" runat="server">
    <table class="style1">
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
                                    BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" 
                                    CellPadding="4" CellSpacing="2" ForeColor="Black" Height="168px" 
                                    Width="324px" onrowcommand="grdinbox_RowCommand" 
                                    onrowdatabound="grdinbox_RowDataBound" 
                    onselectedindexchanged="grdinbox_SelectedIndexChanged">
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
                                        <asp:BoundField HeaderText="From" DataField="FromID">
                                            <FooterStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Subject">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnksubject" CommandName="View" CommandArgument='<%# Bind("Id")%>' runat="server"><%# Eval("Subject")%></asp:LinkButton>
                                            </ItemTemplate>
                                            <FooterStyle Font-Bold="True" />
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="Date" DataField="MDate">
                                            <FooterStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Status" Visible="False">
                                        <ItemTemplate>
                                                <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("MailStatus")%>'> </asp:Label>
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
                                <asp:CheckBox ID="chkinboxselect" runat="server" Font-Bold="True" 
                                    Text="Select All" oncheckedchanged="chkinboxselect_CheckedChanged" 
                                    AutoPostBack="True" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="lnkinboxdelete" runat="server" Font-Bold="True" 
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
                                <asp:Button ID="btnreply" runat="server" Font-Bold="True" Text="Reply" 
                                    onclick="btnreply_Click" />
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
                                <asp:Button ID="btnsent" runat="server" Font-Bold="True" Text="Sent" 
                                    onclick="btnsent_Click" />
                                &nbsp;&nbsp;
                                <asp:Button ID="btnclear" runat="server" Font-Bold="True" Text="Clear" 
                                    onclick="btnclear_Click" />
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
                                <asp:CheckBox ID="chksentselect" runat="server" Text="Select All" 
                                    Font-Bold="True" oncheckedchanged="chksentselect_CheckedChanged" 
                                    AutoPostBack="True" />
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
                                    Width="300px" onrowcommand="grdsentbox_RowCommand">
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
                                                <asp:CheckBox ID="sentselect" runat="server" />
                                            </ItemTemplate>
                                            <FooterStyle Font-Bold="True" />
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="To" DataField="ToId">
                                            <FooterStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Subject">
                                            <ItemTemplate>
                                               
                                                  <asp:LinkButton ID="lnksubject" CommandName="View" CommandArgument='<%# Bind("Id")%>' runat="server"><%# Eval("Subject")%></asp:LinkButton>
                                               
                                            </ItemTemplate>
                                            <FooterStyle Font-Bold="True" />
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="Date" DataField="MDate">
                                            <FooterStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Status" Visible="False">
                                             <ItemTemplate>
                                                <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("MailStatus")%>'> </asp:Label>
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
    <div style="height: 163px; top: 16px; left: 10px; position: absolute; width: 1273px">
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/images/head.jpg" Width="931px" />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/corporations.jpg" 
            style="height: 221px; top: 0px; left: 926px; position: absolute; width: 343px" />
    </div>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    <div style="top: 181px; left: 378px; position: absolute; height: 54px; width: 554px">
   

        <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" 
            ImageUrl="~/images/HOMEBT.jpg" onclick="ImageButton1_Click" Width="111px" />
        <asp:ImageButton ID="ImageButton4" runat="server" Height="53px" 
            ImageUrl="~/images/ABTBT.jpg" onclick="ImageButton4_Click" />
        <asp:ImageButton ID="ImageButton5" runat="server" Height="53px" 
            ImageUrl="~/images/CNTBT.jpg" onclick="ImageButton5_Click" />
        <asp:ImageButton ID="ImageButton6" runat="server" Height="53px" 
            ImageUrl="~/images/SIGNOUTBT.jpg" onclick="ImageButton6_Click" />
   

    </div>
        <p>
    <div style="top: 187px; left: 13px; position: absolute; height: 341px; width: 238px">
        <br />
        <asp:ImageButton ID="ImageButton8" runat="server" Height="41px" 
            ImageUrl="~/images/CPVBT.jpg" onclick="ImageButton8_Click" Width="237px" />
        <br />
        <asp:ImageButton ID="ImageButton9" runat="server" Height="47px" 
            ImageUrl="~/images/INTBT.jpg" Width="237px" onclick="ImageButton9_Click" />
        <br />
        <asp:ImageButton ID="ImageButton13" runat="server" Height="47px" 
            ImageUrl="~/images/FINLISTBT.jpg" onclick="ImageButton13_Click" Width="236px" />
        <br />
        <asp:ImageButton ID="ImageButton11" runat="server" Height="43px" 
            ImageUrl="~/images/CCPBT.jpg" Width="237px" 
            onclick="ImageButton11_Click" />
        <br />
        <asp:ImageButton ID="ImageButton12" runat="server" Height="49px" 
            ImageUrl="~/images/CMSGBT.jpg" Width="238px" 
            onclick="ImageButton12_Click" />
    </div>
        </p>
    </form>
</body>
</html>
    
