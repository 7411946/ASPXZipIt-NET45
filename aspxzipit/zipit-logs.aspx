<%@ Page Title="" Language="C#" MasterPageFile="~/aspxzipit/Site.Master" AutoEventWireup="True" CodeBehind="zipit-logs.aspx.cs" Inherits="ASPXZipIt.zipit_Logs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    ASPX Zipit - Logs
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .preformatted {
            font-family: monospace;
            white-space: pre;
            text-align: left;
            color: White;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyHeader" runat="server">
    Available Logs
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Body" runat="server">
    <center>
    <div style="background: black; overflow: scroll; height: 500px;">
        <br />
        <asp:Label runat="server" ID="lblInfo" CssClass="preformatted" Text="" />
        <br />
    </div>
    <br />
    <asp:Button CssClass="button" ID="btnClearLogs" runat="server" Text="Clear ZipIt Logs" OnClick="ClearLogs_Click" Width="150px" />
    </center>
</asp:Content>
