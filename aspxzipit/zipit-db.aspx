﻿<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="zipit-db.aspx.cs" Inherits="ASPXZipIt.zipit_DB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ASPXZipIt-Backup MSSQL DataBase</title>
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <ul class="tabs group">
                <li><a href="default.aspx" onfocus="this.blur();">Files</a></li>
                <li class="active"><a href="#" onfocus="this.blur();">Databases</a></li>
                <li><a href="zipit-logs.aspx" onfocus="this.blur();">Logs</a></li>
                <li><a href="zipit-settings.aspx" onfocus="this.blur();">Settings</a></li>
            </ul>
        </center>
        <div class="wrapper">
            <center>
                <div class="head">
                    ASPXZipit Backup Utility
                </div>
                <h2>Available Database Backups</h2>
                <br />
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
                <br />
            </center>
            <center>
                <em>
                    <br />
                    <br />
                    <asp:GridView ID="availablebackups_gridview" AutoGenerateSelectButton="true" AutoGenerateDeleteButton="true" BorderWidth="0"
                        BorderColor="#EEEEEE" runat="server">
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:GridView>
                    <br />
                </em>
            </center>
            <center>
                <table>
                    <tr>
                        <td>Enter Hostname:
                        </td>
                        <td>
                            <asp:TextBox runat="server" Height="25px" Width="215px" ID="Hostname" />
                            <asp:RequiredFieldValidator ID="HostNameRequired" runat="server" ControlToValidate="Hostname"
                                ErrorMessage="HostName is required." ToolTip="HostName is required." ValidationGroup="BackupMssqlValidationGroup">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Database Name:
                        </td>
                        <td>
                            <asp:TextBox runat="server" Height="25px" Width="215px" ID="Dbname" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Dbname"
                                ErrorMessage="DBName is required." ToolTip="DBName is required." ValidationGroup="BackupMssqlValidationGroup">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Username:
                        </td>
                        <td>
                            <asp:TextBox runat="server" Height="25px" Width="215px" ID="UsernameDB" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UsernameDB"
                                ErrorMessage="UserName is required." ToolTip="UserName is required." ValidationGroup="BackupMssqlValidationGroup">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Password:
                        </td>
                        <td>
                            <asp:TextBox runat="server" Height="25px" Width="215px" ID="Password" TextMode="Password" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password"
                                ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="BackupMssqlValidationGroup">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Path To Save Backup:
                        </td>
                        <td>
                            <asp:TextBox runat="server" Height="25px" Width="215px" ID="FileBackuplocation" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="HostName"
                                ErrorMessage="Filelocation is required." ToolTip="Filelocatoin is required."
                                ValidationGroup="BackupMssqlValidationGroup">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </center>
            <center>
                <br />
                <asp:Label runat="server" ID="lblInfo" ForeColor="Red" Text="" />
                <br />
                <asp:Label runat="server" ID="lblInfo2" ForeColor="Red" Text="" />
                <br />
                <br />
                <div>
                    <asp:Button CssClass="button" ValidationGroup="BackupMssqlValidationGroup" ID="btnLongRuningTask"
                        runat="server" Text="Zip It" OnClick="BackUpMssql_Click" Width="150px" />
                    <asp:Button CssClass="button" ValidationGroup="BackupMssqlValidationGroup" ID="btnAddStoredProcedure"
                        runat="server" Text="Install Stored Procedure" OnClick="btnAddStoredProcedure_Click"
                        Width="150px" />
                    <br />
                    <br />
                    <asp:Button CssClass="button" ValidationGroup="BackupMssqlValidationGroup" ID="btnShrinkLog"
                        runat="server" Text="Shrink Log File" OnClick="btnShrinkLogFile_Click"
                        Width="150px" />
                    <br />
                    <br />
                </div>
                <font size="1em">ASPXZipit Backup .NET 4.5 provided by <a href="http://onesandzeros415.github.com/ASPXZipIt-NET45/"
                    target="_blank">Matthew Costello</a></font>
            </center>
        </div>
    </form>
</body>
</html>
