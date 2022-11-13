<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="hw4_2.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="HyperLinkStyle" NavigateUrl="~/Default.aspx">CS101</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <asp:Label ID="Label7" runat="server" Text="計算機概論" CssClass="LabelStyle"></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
    <asp:Label ID="Label10" runat="server" Text="4" CssClass="LabelStyle"></asp:Label>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/CS101.gif" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder7" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="顯示課程編號" CssClass="ButtonStyle" OnClick="Button1_Click" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder8" Runat="Server">
    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="HyperLinkStyle" NavigateUrl="~/Default.aspx">CS121</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder9" Runat="Server">
    <asp:Label ID="Label8" runat="server" Text="離散數學" CssClass="LabelStyle"></asp:Label>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="ContentPlaceHolder10" Runat="Server">
    <asp:Label ID="Label11" runat="server" Text="4" CssClass="LabelStyle"></asp:Label>
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder11" Runat="Server">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/CS121.gif" />
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="ContentPlaceHolder12" Runat="Server">
    <asp:Button ID="Button2" runat="server" Text="顯示課程編號" CssClass="ButtonStyle" OnClick="Button2_Click" />
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="ContentPlaceHolder13" Runat="Server">
    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="HyperLinkStyle" NavigateUrl="~/Default.aspx">CS203</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content13" ContentPlaceHolderID="ContentPlaceHolder14" Runat="Server">
    <asp:Label ID="Label9" runat="server" Text="程式語言" CssClass="LabelStyle"></asp:Label>
</asp:Content>
<asp:Content ID="Content14" ContentPlaceHolderID="ContentPlaceHolder15" Runat="Server">
    <asp:Label ID="Label12" runat="server" Text="3" CssClass="LabelStyle"></asp:Label>
</asp:Content>
<asp:Content ID="Content15" ContentPlaceHolderID="ContentPlaceHolder16" Runat="Server">
    <asp:Image ID="Image3" runat="server" ImageUrl="~/CS203.gif" />
</asp:Content>
<asp:Content ID="Content16" ContentPlaceHolderID="ContentPlaceHolder17" Runat="Server">
    <asp:Button ID="Button3" runat="server" Text="顯示課程編號" CssClass="ButtonStyle" OnClick="Button3_Click" />
</asp:Content>
<asp:Content ID="Content17" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label13" runat="server" CssClass="LabelStyle"></asp:Label>
</asp:Content>

