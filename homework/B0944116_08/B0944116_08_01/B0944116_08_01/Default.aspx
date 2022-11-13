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
        <asp:Label ID="Label1" runat="server" style="top: 76px; left: 124px; position: absolute; height: 22px; width: 62px; bottom: 473px" Text="姓名:"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="top: 132px; position: absolute; left: 72px; height: 20px; width: 150px" Text="身高(90~250cm):"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="top: 192px; left: 69px; position: absolute; height: 29px; width: 163px" Text="體重(30~300kg):"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="top: 262px; left: 115px; position: absolute; height: 20px; width: 53px; right: 1239px" Text="性別:"></asp:Label>
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" style="top: 262px; left: 245px; position: absolute; height: 21px; width: 135px" Text="男" />
        <asp:Label ID="Label5" runat="server" style="top: 375px; left: 112px; position: absolute; height: 96px; width: 252px" Text="Label"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" style="top: 66px; left: 250px; position: absolute; height: 23px; width: 188px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="top: 126px; left: 251px; position: absolute; height: 23px; width: 188px; text-align: center"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="top: 185px; left: 251px; position: absolute; height: 23px; width: 188px"></asp:TextBox>
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" style="top: 262px; left: 399px; position: absolute; height: 21px; width: 135px" Text="女" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="top: 312px; left: 104px; position: absolute; height: 27px; width: 63px" Text="計算" />
        <asp:RequiredFieldValidator ID="ValidName" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="必須輸入使用者名稱!!" ForeColor="Red" style="top: 65px; left: 503px; position: absolute; height: 20px; width: 211px"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="請輸入90~250的數字!" ForeColor="Red" MaximumValue="250" MinimumValue="90" style="top: 125px; left: 502px; position: absolute; height: 20px; width: 207px" Type="Integer"></asp:RangeValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="請輸入30~300的數字!" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" style="top: 186px; left: 508px; position: absolute; height: 20px; width: 207px"></asp:CustomValidator>
    </form>
</body>
</html>
