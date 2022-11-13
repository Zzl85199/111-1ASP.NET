<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="B0944116_04.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .docstyle {
            color: #FF0000;
            font-size: xx-large;
            font-weight: bold;
            font-style: normal;
        }
    </style>
    <link href="hw4_1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="docstyle" style="background-color: #99FFCC">
            學號 :
            <asp:Label ID="Label1" runat="server" CssClass="englishstyle" Text="B0944116"></asp:Label>
            <br />
            <br />
            姓名 :
            <asp:Label ID="Label2" runat="server" CssClass="chinesestyle" Text="張哲綸"></asp:Label>
            <br />
            <br />
            性別 :
            <asp:Label ID="Label3" runat="server" CssClass="chinesestyle" Text="男"></asp:Label>
            <br />
            <br />
            學校 :
            <asp:Label ID="Label4" runat="server" CssClass="chinesestyle" Text="長庚大學"></asp:Label>
            <br />
            <br />
            科系 :
            <asp:Label ID="Label5" runat="server" CssClass="chinesestyle" Text="資管系"></asp:Label>
        </div>
    </form>
</body>
</html>
