<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="zipit-logs.aspx.cs" Inherits="ASPXZipIt.zipit_Logs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <title>ASPXZipIt-Backup-Logs</title>
    <link href="styles/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .JaggedCorners {
            border: 1px solid black;
            -moz-border-radius: 25px 10px / 10px 25px;
            border-radius: 25px 10px / 10px 25px;
        }

        .Corners {
            border: 1px solid black;
            -moz-border-radius: 15px;
            border-radius: 15px;
        }

        .InterestingCorners {
            border: 1px solid black;
            -moz-border-radius: 1em 4em 1em 4em;
            border-radius: 1em 4em 1em 4em;
        }

        .Shadow {
            -moz-box-shadow: -5px -5px 5px #888;
            -webkit-box-shadow: -5px -5px 5px #888;
            box-shadow: -5px -5px 5px #888;
        }

        .container {
            width: 280px;
            border: 1px solid black;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }

        .container_wide {
            width: 330px;
            border: 1px solid black;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }

        .preformatted {
            font-family: monospace;
            white-space: pre;
            text-align: left;
            color: White;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <ul class="tabs group">
                <li><a href="default.aspx" onfocus="this.blur();">Files</a></li>
                <li><a href="zipit-db.aspx" onfocus="this.blur();">Databases</a></li>
                <li class="active"><a href="zipit-logs.aspx" onfocus="this.blur();">Logs</a></li>
                <li><a href="zipit-settings.aspx" onfocus="this.blur();">Settings</a></li>
            </ul>
        </center>
        <div class="wrapper">
            <asp:ScriptManager ID="MainScriptManager" runat="server" />
            <center>
                <div class="head">
                    ASPXZipit Backup Utility
                </div>
                <h2>ASPXZipIt Event Log Viewer</h2>
                <br />
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
                <br />
                <br />
            </center>
            <center>
                <div style="background: black; overflow: scroll; height: 500px;">
                    <br />
                    <asp:Label runat="server" ID="lblInfo" CssClass="preformatted" Text="" />
                    <br />
                </div>
            </center>
            <br />
            <asp:Button CssClass="button" ID="btnClearLogs" runat="server" Text="Clear ZipIt Logs"
                OnClick="ClearLogs_Click" Width="150px" />

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
