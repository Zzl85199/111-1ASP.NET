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
        <asp:Label ID="Label1" runat="server" style="top: 53px; left: 207px; position: absolute; height: 20px; width: 138px" Text="使用者姓名:"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="top: 112px; left: 207px; position: absolute; height: 20px; width: 64px; bottom: 439px" Text="帳號:"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="top: 172px; left: 206px; position: absolute; height: 20px; width: 81px" Text="密碼:"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="top: 237px; left: 207px; position: absolute; height: 20px; width: 101px" Text="確認密碼:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="top: 48px; left: 378px; position: absolute; height: 23px; width: 188px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="top: 105px; left: 380px; position: absolute; height: 23px; width: 188px"></asp:TextBox>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" style="top: 167px; left: 382px; position: absolute; height: 23px; width: 188px" TextMode="Password"></asp:TextBox>
        </p>
        <asp:TextBox ID="TextBox4" runat="server" style="top: 232px; left: 384px; position: absolute; height: 23px; width: 188px; right: 827px" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="top: 290px; left: 210px; position: absolute; height: 27px; width: 63px" Text="登入" />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="兩次輸入密碼不同!" ForeColor="Red" style="top: 235px; left: 858px; position: absolute; height: 20px; width: 198px"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="欄位不能為空白!" ForeColor="Red" style="top: 45px; left: 627px; position: absolute; height: 20px; width: 173px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="欄位不能為空白!" ForeColor="Red" style="top: 170px; left: 628px; position: absolute; height: 20px; width: 173px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="欄位不能為空白!" ForeColor="Red" style="top: 234px; left: 633px; position: absolute; height: 20px; width: 173px"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="請輸入電子郵件格式!" ForeColor="Red" style="top: 103px; left: 839px; position: absolute; height: 20px; width: 207px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="欄位不能為空白!" ForeColor="Red" style="top: 103px; left: 631px; position: absolute; height: 20px; width: 173px"></asp:RequiredFieldValidator>
        <asp:Label ID="Label5" runat="server" style="top: 362px; left: 206px; position: absolute; height: 113px; width: 476px" Text="Label"></asp:Label>
    </form>
</body>
</html>
