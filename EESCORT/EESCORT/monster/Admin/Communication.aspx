<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Communication.aspx.cs" Inherits="Administrator_Communication" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 82%;
            top: 250px;
            left: 212px;
            position: absolute;
            height: 806px;
            background-color: #ACACC8;
        }
        .style2
        {
            width: 165px;
        }
        .style3
        {
            width: 100%;
            height: 155px;
        }
        .style4
        {
            width: 91px;
        }
        .style5
        {
            width: 91px;
            font-weight: bold;
        }
        .style6
        {
        }
        .style7
        {
        }
        .style8
        {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2" style="font-size: large; color: #000000; font-weight: bold">
                Communication</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:LinkButton ID="lnkbtninbox" runat="server" Font-Bold="True" 
                    onclick="lnkbtninbox_Click">Inbox</asp:LinkButton>
                <asp:Label ID="lblinboxstatus" runat="server"></asp:Label>
            </td>
            <td rowspan="4">
                <asp:Panel ID="pnlinbox" runat="server" Height="229px">
                    <table class="style3">
                        <tr>
                            <td class="style8">
                                <asp:CheckBox ID="chkinboxselect" runat="server" Font-Bold="True" 
                                    Text="Select All" AutoPostBack="True" 
                                    oncheckedchanged="chkinboxselect_CheckedChanged" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="lnkinboxdelete" runat="server" Font-Bold="True" 
                                    onclick="lnkinboxdelete_Click">Delete</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="grdinbox" runat="server" AutoGenerateColumns="False" 
                                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                                    CellPadding="4" CellSpacing="2" ForeColor="Black" Height="168px" 
                                    Width="324px" onrowcommand="grdinbox_RowCommand" 
                                    onrowdatabound="grdinbox_RowDataBound">
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
                                        <asp:BoundField DataField="FromId" HeaderText="From">
                                            <FooterStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Subject">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnksubject" CommandName="View" CommandArgument='<%# Bind("Id")%>' runat="server"><%# Eval("Subject")%></asp:LinkButton>
                                            </ItemTemplate>
                                            <FooterStyle Font-Bold="True" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="MDate" HeaderText="Date">
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
        <tr>
            <td class="style2">
                <asp:LinkButton ID="lnkbtncomposemail" runat="server" Font-Bold="True" 
                    onclick="lnkbtncomposemail_Click">ComposeMail</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:LinkButton ID="lnkbtnsentmail" runat="server" Font-Bold="True" 
                    onclick="lnkbtnsentmail_Click">SentMail</asp:LinkButton>
                <asp:Label ID="lblsentstatus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" rowspan="6">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="pnlview" runat="server" Height="155px" Width="949px">
                    <table class="style3">
                        <tr>
                            <td class="style5">
                                Subject</td>
                            <td>
                                <asp:Label ID="lblviewsubject" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Date</td>
                            <td>
                                <asp:Label ID="lblviewdate" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                From</td>
                            <td>
                                <asp:Label ID="lblviewfrom" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                To</td>
                            <td>
                                <asp:Label ID="lblviewto" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Content</td>
                            <td>
                                <asp:Label ID="lblviewcontent" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <b>
                                <asp:Button ID="btnreply" runat="server" Font-Bold="True" Text="Reply" 
                                    onclick="btnreply_Click" Visible="False" />
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
                <asp:Panel ID="pnlcompose" runat="server" Height="189px">
                    <table class="style3">
                        <tr>
                            <td class="style6">
                                To</td>
                            <td>
                                <asp:DropDownList ID="drpcomposeto" runat="server">
                                    <asp:ListItem>Select</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;
                                <asp:Label ID="lblmsgto" runat="server" Visible="False"></asp:Label>
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
                                <asp:Button ID="btnsent" runat="server" Font-Bold="True" Text="Send" 
                                    onclick="btnsent_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
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
                <asp:Panel ID="pnlsent" runat="server">
                    <table class="style3">
                        <tr>
                            <td class="style7">
                                <asp:CheckBox ID="chksentselect" runat="server" Text="Select All" 
                                    Font-Bold="True" AutoPostBack="True" 
                                    oncheckedchanged="chksentselect_CheckedChanged" />
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
                                                <asp:CheckBox ID="chksentmail" runat="server" />
                                            </ItemTemplate>
                                            <FooterStyle Font-Bold="True" />
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="To" DataField="ToId">
                                            <FooterStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Subject">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnksubjectselect" CommandName="View" CommandArgument='<%# Bind("Id")%>' runat="server"><%# Eval("Subject")%></asp:LinkButton>
                                            </ItemTemplate>
                                            <FooterStyle Font-Bold="True" />
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="Date" DataField="MDate">
                                            <FooterStyle Font-Bold="True" />
                                        </asp:BoundField>
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
    <p>
        <asp:Image ID="Image1" runat="server" Height="175px" 
            ImageUrl="~/images/head.jpg" 
            style="top: 15px; left: 12px; position: absolute; width: 835px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/mainpic.jpg" 
            style="top: 11px; left: 848px; position: absolute; height: 236px; width: 427px" />
    <div style="top: 194px; left: 211px; position: absolute; height: 54px; width: 636px">
   

        <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" 
            ImageUrl="~/images/HOMEBT.jpg" onclick="ImageButton1_Click" Width="111px" />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="53px" 
            ImageUrl="~/images/CSBT.jpg" onclick="ImageButton3_Click" />
        <asp:ImageButton ID="ImageButton4" runat="server" Height="53px" 
            ImageUrl="~/images/ABTBT.jpg" onclick="ImageButton4_Click" />
        <asp:ImageButton ID="ImageButton5" runat="server" Height="53px" 
            ImageUrl="~/images/CNTBT.jpg" onclick="ImageButton5_Click" />
        <asp:ImageButton ID="ImageButton6" runat="server" Height="53px" 
            ImageUrl="~/images/SIGNOUTBT.jpg" onclick="ImageButton6_Click" />
   

    </div>
    <div style="top: 193px; left: 9px; position: absolute; height: 453px; width: 206px">
        <asp:ImageButton ID="ImageButton7" runat="server" Height="51px" 
            ImageUrl="~/images/JPBT.jpg" onclick="ImageButton7_Click" Width="196px" />
        <br />
        <asp:ImageButton ID="ImageButton8" runat="server" Height="44px" 
            ImageUrl="~/images/JSBT.jpg" onclick="ImageButton8_Click" Width="195px" />
        <br />
        <asp:ImageButton ID="ImageButton9" runat="server" Height="43px" 
            ImageUrl="~/images/EXSCHBT.jpg" onclick="ImageButton9_Click" 
            Width="193px" />
        <br />
        <asp:ImageButton ID="ImageButton10" runat="server" Height="43px" 
            ImageUrl="~/images/ADDQNBT.jpg" onclick="ImageButton10_Click" 
            Width="193px" />
        <br />
        <asp:ImageButton ID="ImageButton11" runat="server" Height="50px" 
            ImageUrl="~/images/SLBT.jpg" onclick="ImageButton11_Click" Width="194px" />
        <br />
        <asp:ImageButton ID="ImageButton13" runat="server" Height="43px" 
            ImageUrl="~/images/CMSGBT.jpg" onclick="ImageButton13_Click" 
            Width="193px" />
        <br />
        <asp:ImageButton ID="ImageButton14" runat="server" Height="43px" 
            ImageUrl="~/images/CCPBT.jpg" onclick="ImageButton14_Click" 
            Width="198px" />
        <br />
    </div>
    </p>
    </form>
</body>
</html>
