<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 73px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><table>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="郵件地址:" ForeColor="#6666FF"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <br />
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="郵件主旨:" ForeColor="#3366FF"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="郵件內容:" ForeColor="#3366FF"></asp:Label>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="HTML" ForeColor="#3366FF" />
                </td>
                <td rowspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                
                    <asp:Label ID="Label4" runat="server" Text="寄件人帳號:"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="寄件人密碼:"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                
                </td>          
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="寄出" Width="100px" />
                    <br />
                    <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table></div>
    </form>
</body>
</html>
