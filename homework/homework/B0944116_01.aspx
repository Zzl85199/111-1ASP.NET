<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="B0944116_01.aspx.cs" Inherits="homework.B0944116_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 141px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="我想說的是"></asp:Label>
            <br />
            <br />
        </div>
        <asp:TextBox ID="TextBox1" runat="server">請輸入想說的話</asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Height="21px" OnClick="Button1_Click" Text="送出" />
        </p>
    </form>
</body>
</html>
