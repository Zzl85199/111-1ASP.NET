<%@ Page Title="" Language="C#" MasterPageFile="~/Member.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>歡迎進入會員首頁</p>
<p>
    <table style="width: 100%">
        <tr>
            <td style="color: #0000FF">學號:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #0000FF">姓名:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #0000FF">成績:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtGrade" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="更改Profile物件" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</p>
</asp:Content>

