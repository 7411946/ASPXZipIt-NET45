<%@ Page Title="" Language="C#" MasterPageFile="~/aspxzipit/Site.Master" AutoEventWireup="True" CodeBehind="zipit-settings.aspx.cs" Inherits="ASPXZipIt.zipit_Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageTitle" runat="server">
    ASPX Zipit - Settings
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .PassWD {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyHeader" runat="server">
    Available Settings
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Body" runat="server">
    <center>
    <asp:Label runat="server" ID="lblinfo" ForeColor="Red" Text="" />
    <br />
    <h1>Rebuild Application</h1>
    <br />
    <asp:Button CssClass="button" ID="Button5" runat="server" Text="Rebuild Application" OnClick="Manual_RebuildApplication_Click" Width="150px" />
    <br />
    <br />
    <asp:Label runat="server" ID="lblinforebuildapp" ForeColor="Red" Text="" />
    <br />
    <h1>CloudFiles API Information
    </h1>
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
    <br />
    <asp:Button CssClass="button" ID="btnchangeCloudFilesApi" runat="server" Text="Change Api Creds" OnClientClick="javascript:return confirmAction(this.name,'Are you sure you wish to change your CloudFiles API Information?');" OnClick="ChangeCloudFilesApi_Click" Width="150px" />
    <br />
    <br />
    <asp:Button CssClass="button" ID="btnresetCloudFilesApi" runat="server" Text="Default Api Creds" OnClientClick="javascript:return confirmAction(this.name,'Are you sure you wish to revert your CloudFiles API Information back to default?');" OnClick="ChangeCloudFilesApiDefault_Click" Width="150px" />
    <br />
    <asp:Label runat="server" ID="lblinfocfinfo" ForeColor="Red" Text="" />
    <br />
    <h1>Impersonation Information:
    </h1>
    <br />
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
    <br />
    <asp:Button CssClass="button" ID="Button2" runat="server" Text="Update Impersonation" OnClientClick="javascript:return confirmAction(this.name,'Are you sure you wish to update your Impersonation credentials?');" OnClick="ChangeImpersonation_Click" Width="150px" />
    <br />
    <br />
    <asp:Label runat="server" ID="lblinfoimpersonate" ForeColor="Red" Text="" />
    <br />
    <br />
    <h1>ASPXZipIt Credentials:
    </h1>
    <br />
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
    <br />
    <asp:Button CssClass="button" ID="Button3" runat="server" Text="Update Password" OnClientClick="javascript:return confirmAction(this.name,'Are you sure you wish to update your ASPXZipIt Credentials?');" OnClick="UpdateASPMembershipPasswd_Click" Width="150px" />
    <br />
    <br />
    <asp:Label runat="server" ID="lblinfoaspxcreds" ForeColor="Red" Text="" />
    <br />
    <br />
    <h1>Update ASPXZipIt</h1>
    <br />
    <asp:Button CssClass="button" ID="btnUpdateAspx" runat="server" OnClientClick="javascript:return confirmAction(this.name,'Are you sure you wish to update ASPXZipIt?');" Text="Update ASPXZipIt" OnClick="UpdateASPXZipIt_Click" Width="150px" />
    <br />
    <br />
    <asp:Label runat="server" ID="lblupdateaspx" ForeColor="Red" Text="" />
    <br />
    <br />
    <h1>Uninstall ASPXZipIt</h1>
    <br />
    <asp:Button CssClass="button" ID="Button6" runat="server" Text="Uninstall ASPXZipIt" OnClientClick="javascript:return confirmAction(this.name,'Are you sure you wish to uninstall ASPXZipIt permanently?');" OnClick="UninstallASPXZipIt_Click" Width="150px" />
    <br />
    <br />
    <asp:Label runat="server" ID="lblinfouninstallaspx" ForeColor="Red" Text="" />
    </center>
</asp:Content>
