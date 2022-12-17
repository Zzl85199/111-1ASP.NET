<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Desktop.aspx.cs" Inherits="Desktop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PathContent" Runat="Server" >
    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        <NodeTemplate>
            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("url") %>' OnCommand="Button1_Command" Text='<%# Eval("title") %>' />
        </NodeTemplate>
        <PathSeparatorTemplate>
            <span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:
10.0pt;font-family:Wingdings;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA;mso-char-type:symbol;mso-symbol-font-family:Wingdings"><span style="mso-char-type:symbol;mso-symbol-font-family:Wingdings">à</span></span>
        </PathSeparatorTemplate>
    </asp:SiteMapPath>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>桌上型電腦</p>
</asp:Content>

