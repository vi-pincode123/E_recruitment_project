<%@ Page Language="C#" MasterPageFile="~/JobSeeker/exam.master" AutoEventWireup="true" CodeFile="takequiz.aspx.cs" Inherits="JobSeeker_takequiz" Title="Untitled Page" %>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p style="height: 652px; width: 1006px; background-color: #000099">
        &nbsp;&nbsp;<asp:GridView ID="grdquestions" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" CellSpacing="1" DataKeyNames="code" GridLines="None" 
            onselectedindexchanged="grdquestions_SelectedIndexChanged" 
            style="top: 176px; left: 66px; position: absolute; height: 144px; width: 906px">
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        Questions
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl2" runat="server" Text='<%#Eval("qns")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        Options
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:RadioButton ID="rdb1" runat="server" GroupName="g1" 
                            Text='<%#Eval("ch1")%>' />
                        <asp:RadioButton ID="rdb2" runat="server" GroupName="g1" 
                            Text='<%#Eval("ch2")%>' />
                        <asp:RadioButton ID="rdb3" runat="server" GroupName="g1" 
                            Text='<%#Eval("ch3")%>' />
                        <asp:RadioButton ID="rdb4" runat="server" GroupName="g1" 
                            Text='<%#Eval("ch4")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:GridView>
        <table class="style3">
            <tr>
                <td class="style4" colspan="2" style="text-align: center">
                    ONLINE EXAM</td>
            </tr>
            <tr>
                <td class="style5">
                    Register Number:
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style6">
                    &nbsp;Candidate Nmae:
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    &nbsp;<asp:Button ID="Button2" runat="server" 
                        style="top: 396px; left: 556px; position: absolute; height: 26px" Text="Stop" 
                        Width="71px" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="top: 416px; left: 469px; position: absolute; height: 26px; width: 61px" 
            Text="Submit" />
    </p>
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style3
    {
        top: 19px;
        left: 0px;
        position: absolute;
        height: 46px;
        width: 997px;
        background-color: #A2A2C1;
    }
</style>


</asp:Content>



