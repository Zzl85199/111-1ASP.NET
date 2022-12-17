<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="B0944116_02.aspx.cs" Inherits="homework.B0944116_02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="A:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label2" runat="server" Text="B:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="A+B"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="A-B"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="A*B"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="A/B"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="計算" />
        </div>
    </form>
</body>
</html>
