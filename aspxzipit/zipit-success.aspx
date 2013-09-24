<%@ Page Language="C#" %>

<%@ Import Namespace="System" %>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script runat="server">
    
    //ASPXZipIt Designed and Mainted By: Matthew Costello, 1/28/2013, San Antonio, Texas.
    //Updated to v2 : 9/19/2013
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string deleteIsSuccess = Request.QueryString["rad"];
        string path = Server.MapPath("~\\");
        string installerpath_aspxzipit = path + "aspxzipit";

        if (deleteIsSuccess == "success")
        {
            Directory.Delete(installerpath_aspxzipit);
        }
    }
</script>
<head id="Head1" runat="server">

    <style id="importcss" runat="server" type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        body {
            font: 1em "Arial", sans-serif;
            background: #ccc;
            background: url(https://github.com/onesandzeros415/ASPXZipIt-NET45/raw/master/aspxzipit/assets/images/background.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            background-color: #7397a7;
        }

        #wrapper {
            width: 720px;
            margin: 40px auto 0;
            padding-bottom: 20px;
        }

            #wrapper h1 {
                color: #2E2E2E;
                margin-bottom: 10px;
                font-family: 'Source Sans Pro', sans-serif;
            }

            #wrapper a {
                font-size: 1.2em;
                color: #108DE3;
                text-decoration: none;
                text-align: center;
            }

        #tabContainer {
            width: 700px;
            padding: 15px;
            background-color: #2e2e2e;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }

        #tabscontent {
            -moz-border-radius-topleft: 0px;
            -moz-border-radius-topright: 5px;
            -moz-border-radius-bottomright: 5px;
            -moz-border-radius-bottomleft: 5px;
            border-top-left-radius: 0px;
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
            border-bottom-left-radius: 5px;
            padding: 10px 10px 25px;
            background: #FFFFFF; /* old browsers */
            background: -moz-linear-gradient(top, #FFFFFF 0%, #FFFFFF 90%, #e4e9ed 100%); /* firefox */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#FFFFFF), color-stop(90%,#FFFFFF), color-stop(100%,#e4e9ed)); /* webkit */
            margin: 0;
            color: #333;
        }
    </style>
    <title>ASPXZipIt - Successfully Uninstalled</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <h1>ASPX Zipit</h1>
            <div id="tabContainer">
                <div id="tabscontent" style="text-align: center">
                    You have successfully uninstalled ASPXZipIt.  Feel free to delete this page via FTP.
                </div>
            </div>
        </div>
    </form>
</body>
</html>
