<%@ Page Language="C#" MasterPageFile="~/JobSeeker/jsmaster.master" AutoEventWireup="true" CodeFile="jshome.aspx.cs" Inherits="JobSeeker_jshome" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        height: 290px;
        width: 1026px;
        top: 2px;
        left: 0px;
        position: absolute;
        font-family: "Courier New", Courier, monospace;
        font-size: x-large;
        font-weight: bold;
        font-style: italic;
        color: #FFFFFF;
        text-align: center;
        background-color: #000099;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p class="style3">
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp; To Complete Your Registration Please Provide The Following 
        Details<br />
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1" 
            style="color: #FFFFFF">Add Academic Details</asp:LinkButton>
</p>
</asp:Content>


