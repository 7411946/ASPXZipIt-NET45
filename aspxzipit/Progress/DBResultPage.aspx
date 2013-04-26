<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="DBResultPage.aspx.cs" Inherits="ASPXZipIt.DBResultPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <title>ASPXZipIt-Backup Mssql Database Processing...</title>
    <base target="_self" />
    <link href="/aspxzipit/styles/StyleSheet.css" rel="stylesheet" type="text/css" />
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

        .buttonCss {
            color: White;
            background-color: Black;
            font-weight: bold;
        }

        .buttonCss {
            color: White;
            background-color: Black;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <br />
            <br />
            <asp:Label ID="lblProcessing" runat="server" Text="We are processing your request. Please don't close this window until complete." />
            <br />
            <br />
            <center>
                <img id="imgProgress" runat="server" src="/aspxzipit/images/progress.gif" width="147" height="25" />
            </center>
            <asp:Label ID="lblResult" runat="server" Visible="false" Font-Bold="true" />
            <br />
            <asp:Label runat="server" ID="lblInfo" ForeColor="Red" Text="" />
            <br />
            <br />
            <center>
                <asp:Button ID="btnClose" runat="server" Visible="false" Text="Close" OnClick="btngoback_Click"
                    CssClass="buttonCss" />
            </center>
        </div>
    </form>
</body>
</html>
