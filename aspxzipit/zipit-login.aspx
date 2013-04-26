<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zipit-login.aspx.cs" Inherits="ASPXZipIt.zipit_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <title>ASPXZipIt-Backup-Web Content</title>
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <ul class="tabs group">
                <li class="active"><a href="#" onfocus="this.blur();">Files</a></li>
                <li><a href="zipit-db.aspx" onfocus="this.blur();">Databases</a></li>
                <li><a href="zipit-logs.aspx" onfocus="this.blur();">Logs</a></li>
                <li><a href="zipit-settings.aspx" onfocus="this.blur();">Settings</a></li>
            </ul>
        </center>
        <div class="wrapper">
            <center>
                <div class="head">
                    ASPXZipit Backup Utility
                </div>
            </center>
            <center>
                <div>
                    <asp:Login ID="Login1" DisplayRememberMe="false" runat="server" />
                </div>
                <asp:Label ID="result" runat="server"></asp:Label></>
                <font size="1em">ASPXZipit Backup provided by <a href="http://onesandzeros415.github.com/ASPXZipIt-NET40/"
                    target="_blank">Matthew Costello</a></font>
            </center>
        </div>
    </form>
</body>
</html>
