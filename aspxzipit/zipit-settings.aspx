<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="zipit-settings.aspx.cs" Inherits="ASPXZipIt.zipit_Settings" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <title>ASPXZipIt-Backup-Web Content</title>
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function rdfHide(obj) {
            document.getElementById(obj).style.display = 'none';
        }

        function rdfShow(obj) {
            document.getElementById(obj).style.display = 'block';
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <ul class="tabs group">
                <li><a href="Default.aspx" onfocus="this.blur();">Files</a></li>
                <li><a href="zipit-db.aspx" onfocus="this.blur();">Databases</a></li>
                <li><a href="zipit-logs.aspx" onfocus="this.blur();">Logs</a></li>
                <li class="active"><a href="zipit-settings.aspx" onfocus="this.blur();">Settings</a></li>
            </ul>
        </center>
        <div class="wrapper">
            <center>
                <div class="head">
                    ASPXZipIt Backup Utility
                </div>
                <h2>ASPXZipIt Settings</h2>
                <br />
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
                <br />
            </center>
            <center>
                <h1>CloudFiles API Information:
                </h1>
                <asp:Label runat="server" ID="lblinfo" ForeColor="Red" Text="" />
            </center>
            <center>
                <table>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">CloudFiles Username:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:Label runat="server" ID="lblInfo1" ForeColor="Red" Text="" /></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">CloudFiles APIKey:</td>
                        <td style="width: 50%; text-align: left;">
                            <div id="CloudFilesAPIHide" class="PassWD">
                                <asp:Label runat="server" ID="lblInfo2" ForeColor="Red" Text="" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <a href="javascript:void(0);" onclick="rdfShow('CloudFilesAPIHide')">Show Password</a>
                            <a href="javascript:void(0);" onclick="rdfHide('CloudFilesAPIHide')">Hide Password</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">Service Net:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:Label runat="server" ID="lblInfo3" ForeColor="Red" Text="" /></td>
                    </tr>
                    <tr>
                        <td style="text-align: center;" colspan="2">
                            <h1>Update CloudFiles API Information</h1>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">CloudFiles Username:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:TextBox ID="TxtCloudfileUsername" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">CloudFiles APIKey:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:TextBox ID="TxtCloudFilesApiKey" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">Service Net Enabled:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:DropDownList ID="ddlCloudFilesServiceNet" runat="server">
                                <asp:ListItem Selected="True" Text="true" Value="true"></asp:ListItem>
                                <asp:ListItem Text="false" Value="false"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </center>
            <br />
            <asp:Button CssClass="button" ID="btnchangeCloudFilesApi" runat="server" Text="Change Api Creds" OnClientClick="return confirm('Are you sure you wish to change your CloudFiles API Information?');" OnClick="ChangeCloudFilesApi_Click" Width="150px" />
            <br />
            <br />
            <asp:Button CssClass="button" ID="btnresetCloudFilesApi" runat="server" Text="Default Api Creds" OnClientClick="return confirm('Are you sure you wish to revert your CloudFiles API Information back to default?');" OnClick="ChangeCloudFilesApiDefault_Click" Width="150px" />
            <br />
            <br />
            <asp:Label runat="server" ID="lblinfocfinfo" ForeColor="Red" Text="" />
            <br />
            <br />
            <h1>Impersonation Information:
            </h1>
            <br />
            <center>
                <table>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">Enabled:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:Label runat="server" ID="lblinfo4" ForeColor="Red" Text="" /></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">Impersonation Username:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:Label runat="server" ID="lblinfo5" ForeColor="Red" Text="" /></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">Impersonation Passwd:</td>
                        <td style="width: 50%; text-align: left;">
                            <div id="ImpersonationPasswdHide" class="PassWD">
                                <asp:Label runat="server" ID="lblinfo6" ForeColor="Red" Text="" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <a href="javascript:void(0);" onclick="rdfShow('ImpersonationPasswdHide')">Show Password</a>
                            <a href="javascript:void(0);" onclick="rdfHide('ImpersonationPasswdHide')">Hide Password</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center;" colspan="2">
                            <h1>Update Impersonation</h1>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">Enabled:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:DropDownList ID="ddlImpersonationEnabled" runat="server">
                                <asp:ListItem Text="true" Value="true"></asp:ListItem>
                                <asp:ListItem Selected="True" Text="false" Value="false"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">Impersonation Username:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:TextBox ID="TxtImpersonationUserName" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">Impersonation Passwd:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:TextBox ID="TxtImpersonationPasswd" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                </table>
            </center>
            <br />
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="Update Impersonation" OnClientClick="return confirm('Are you sure you wish to update your Impersonation credentials?');" OnClick="ChangeImpersonation_Click" Width="150px" />
            <br />
            <br />
            <asp:Label runat="server" ID="lblinfoimpersonate" ForeColor="Red" Text="" />
            <br />
            <br />
            <h1>ASPXZipIt Credentials:
            </h1>
            <br />
            <center>
                <table>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">Current UserName Is: 
                        </td>
                        <td style="width: 50%; text-align: left;">
                            <asp:Label runat="server" ID="lblinfoaspxcredsusername" ForeColor="Red" Text="" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">Current Password Is: 
                        </td>
                        <td style="width: 50%; text-align: left;">
                            <div id="hidepasswd" class="PassWD">
                                <asp:Label runat="server" ID="lblinfoaspxcredspasswd" ForeColor="Red" Text="" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <a href="javascript:void(0);" onclick="rdfShow('hidepasswd')">Show Password</a>
                            <a href="javascript:void(0);" onclick="rdfHide('hidepasswd')">Hide Password</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center;" colspan="2">
                            <h1>Update ASPXZipIt Credentials</h1>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">New Username:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:TextBox ID="updateaspxcredsusername" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; padding-right: 10px;">New Passwd:</td>
                        <td style="width: 50%; text-align: left;">
                            <asp:TextBox ID="updateaspxcredspasswd" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </center>
            <br />
            <asp:Button CssClass="button" ID="Button3" runat="server" Text="Update Password" OnClientClick="return confirm('Are you sure you wish to update your ASPXZipIt Credentials?');" OnClick="UpdateASPMembershipPasswd_Click" Width="150px" />
            <br />
            <br />
            <asp:Button CssClass="button" ID="addaspmembership" runat="server" Text="Add ASP Membership" OnClick="AddASPMembership_Click" Width="150px" />
            <br />
            <asp:Button CssClass="button" ID="addaspmembershipauthenticaton" runat="server" Text="Add ASP Membership Auth" OnClick="AddASPMembershipAuthentication_Click" Width="200px" />
            <br />
            <asp:Label runat="server" ID="lblinfoaspxcreds" ForeColor="Red" Text="" />
            <br />
            <br />
            <h1>Update ASPXZipIt</h1>
            <br />
            <asp:Button CssClass="button" ID="btnUpdateAspx" runat="server" OnClientClick="return confirm('Are you sure you wish to update ASPXZipIt?');" Text="Update ASPXZipIt" OnClick="UpdateASPXZipIt_Click" Width="150px" />
            <br />
            <br />
            <asp:Label runat="server" ID="lblupdateaspx" ForeColor="Red" Text="" />
            <br />
            <br />
            <h1>Rebuild Application ASPXZipIt</h1>
            <br />
            <asp:Button CssClass="button" ID="Button5" runat="server" Text="Rebuild Application" OnClick="Manual_RebuildApplication_Click" Width="150px" />
            <br />
            <br />
            <asp:Label runat="server" ID="lblinforebuildapp" ForeColor="Red" Text="" />
            <br />
            <br />
            <h1>Uninstall ASPXZipIt</h1>
            <br />
            <asp:Button CssClass="button" ID="Button6" runat="server" Text="Uninstall ASPXZipIt" OnClientClick="return confirm('Are you sure you wish to uninstall ASPXZipIt permanently?');" OnClick="UninstallASPXZipIt_Click" Width="150px" />
            <br />
            <br />
            <asp:Label runat="server" ID="lblinfouninstallaspx" ForeColor="Red" Text="" />
            <br />
            <br />
            <center>
                <font size="1em">ASPXZipit Backup provided by <a href="http://onesandzeros415.github.com/ASPXZipIt-NET40/"
                    target="_blank">Matthew Costello</a></font>
            </center>
        </div>
    </form>
</body>
</html>
