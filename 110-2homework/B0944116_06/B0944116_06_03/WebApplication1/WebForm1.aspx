<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請選擇餐點(可複選):<br />
            <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" SelectionMode="Multiple">
                <asp:ListItem Value="20">豆漿$20</asp:ListItem>
                <asp:ListItem Value="20">紅茶$20</asp:ListItem>
                <asp:ListItem Value="30">奶茶$30</asp:ListItem>
                <asp:ListItem Value="20">三明治$20</asp:ListItem>
                <asp:ListItem Value="30">蘿蔔糕$30</asp:ListItem>
                <asp:ListItem Value="40">蛋餅$40</asp:ListItem>
                <asp:ListItem Value="50">漢堡$50</asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="選擇" />
        </div>
    </form>
</body>
</html>
