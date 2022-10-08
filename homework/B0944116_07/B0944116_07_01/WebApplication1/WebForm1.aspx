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
            1.請問下列哪一個TextBox控制項的屬性,可以設定控制項為單行文字、密碼和多行文字方塊?<br />
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>DefaultFocus</asp:ListItem>
                <asp:ListItem>Checked</asp:ListItem>
                <asp:ListItem>TextMode</asp:ListItem>
                <asp:ListItem>Text</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            2.請問Page物件的哪一個屬性可以檢查是否是第一次載入ASP.NET網頁?<br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="PostBack">PostBack</asp:ListItem>
                <asp:ListItem Value="IsPostBack">IsPostBack</asp:ListItem>
                <asp:ListItem Value="Send">Send</asp:ListItem>
                <asp:ListItem Value="IsValid">IsValid</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            3.請指出下列哪一個RadioButton控制項的屬性值如果相同,表示是一組選擇鈕?<br />
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Text</asp:ListItem>
                <asp:ListItem> Checked</asp:ListItem>
                <asp:ListItem>GroupName</asp:ListItem>
                <asp:ListItem>TextAlign</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            4.請問清單控制項都是使用下列哪一種Web控制項來建立項目?<br />
            <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem> ListItem </asp:ListItem>
                <asp:ListItem>CheckBox </asp:ListItem>
                <asp:ListItem>RadioButton</asp:ListItem>
                <asp:ListItem>LinkButton</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            5.請指出下列哪一個CheckBox控制項的屬性可以檢查CheckBox控制項是否勾選?<br />
            <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Text</asp:ListItem>
                <asp:ListItem>Checked </asp:ListItem>
                <asp:ListItem>TextAlign</asp:ListItem>
                <asp:ListItem>GroupName</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="送出" Width="105px" />
            <br />
            <br />
            <asp:Label ID="Label6" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
