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
            <asp:Image ID="Image1" runat="server" AlternateText="快樂學電腦" ImageUrl="~/Happy.jpg" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://books.gotop.com.tw/c_AEZ021300#">點我看介紹</asp:HyperLink>
        </div>
    </form>
</body>
</html>
