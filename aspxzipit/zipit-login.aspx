<%@ Page Title="" Language="C#" MasterPageFile="~/aspxzipit/Site.Master" AutoEventWireup="true" CodeBehind="zipit-login.aspx.cs" Inherits="ASPXZipIt.zipit_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    ASPX Zipit - Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyHeader" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Body" runat="server">
    <center>
    <div>
        <asp:Login ID="Login1" DisplayRememberMe="false" DestinationPageUrl="~/aspxzipit/Default.aspx" runat="server" />
    </div>
    <asp:Label ID="result" runat="server"></asp:Label>
    </center>
</asp:Content>
