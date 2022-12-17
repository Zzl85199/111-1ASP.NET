<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
        .lblStyle
        {
            font-size: large;
            color: #99FFCC;
            background-color: #000000;
            border-style: outset;
        }
        .btnStyle
        {
            font-size: large;
            background-color: #800000;
            color: #FFFFFF;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="docStyle">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtStyle">測試ASP.NET網頁樣式</asp:TextBox>
        </div>
    </form>
</body>
</html>
