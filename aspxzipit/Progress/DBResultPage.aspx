<%@ Page Title="" Language="C#" MasterPageFile="~/aspxzipit/Site.Master" AutoEventWireup="True" CodeBehind="DBResultPage.aspx.cs" Inherits="ASPXZipIt.DBResultPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    Processing backup.......
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font: 1em "Arial", sans-serif;
            background: url(../assets/images/background.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            background-color: #7397a7;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyHeader" runat="server">
    Processing backup.......
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Body" runat="server">
    <center>
    <asp:Label ID="lblProcessing" runat="server" Text="Processing your database backup request. Please don't close this window or browse anywhere until complete." />
    <br />
    <br />
    <img id="imgProgress" runat="server" src="/aspxzipit/assets/images/progress.gif" width="147" height="25" />
    <asp:Label ID="lblResult" runat="server" Visible="false" Font-Bold="true" />
    <br />
    <asp:Label runat="server" ID="lblInfo" ForeColor="Red" Text="" />
    <br />
    <br />
    <asp:Button ID="btnClose" runat="server" Visible="false" Text="Close" OnClick="btngoback_Click"
        CssClass="buttonCss" />
    </center>
</asp:Content>
