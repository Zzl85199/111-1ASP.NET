﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .txtStyle {
            font-size: large;
            font-weight: bold;
            color: #FF0000;
            border: medium dotted #0000FF;
        }
        .docStyle {
            color: #008000;
            background-color: #FFFF00;
        }
        
    </style>
    <link href="main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="docStyle">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtStyle">測試ASP.NET網頁樣式</asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lblStyle"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btnStyle" />
        </div>
    </form>
</body>
</html>
