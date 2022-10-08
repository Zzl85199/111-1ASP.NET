<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" style="top: 73px; left: 178px; position: absolute; height: 20px; width: 41px; bottom: 478px" Text="姓名"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="top: 133px; left: 177px; position: absolute; height: 20px; width: 41px; bottom: 418px" Text="成績"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="top: 64px; left: 280px; position: absolute; height: 23px; width: 188px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="top: 129px; left: 281px; position: absolute; height: 23px; width: 188px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="top: 197px; left: 175px; position: absolute; height: 27px; width: 63px" Text="輸入" />
        <asp:Label ID="Label3" runat="server" style="top: 269px; left: 182px; position: absolute; height: 91px; width: 196px"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="欄位不能為空白!" ForeColor="Red" style="top: 64px; left: 512px; position: absolute; height: 20px; width: 173px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="欄位不能為空白!" ForeColor="Red" style="top: 128px; left: 511px; position: absolute; height: 20px; width: 173px"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="成績範圍為0~100之間" ForeColor="Red" MaximumValue="100" MinimumValue="0" style="top: 128px; left: 700px; position: absolute; height: 20px; width: 191px"></asp:RangeValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="姓名格式錯誤" ForeColor="Red" style="top: 67px; left: 705px; position: absolute; height: 20px; width: 207px" ValidationExpression="[a-zA-Z]{1,}"></asp:RegularExpressionValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" ShowMessageBox="True" ShowSummary="False" style="top: 180px; left: 501px; position: absolute; height: 40px; width: 1387px" />
    </form>
</body>
</html>
