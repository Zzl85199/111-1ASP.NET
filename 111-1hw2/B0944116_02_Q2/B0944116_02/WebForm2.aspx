<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="B0944116_02.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="stockname" HeaderText="stockname" SortExpression="stockname" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="epsq1" HeaderText="epsq1" SortExpression="epsq1" />
                    <asp:BoundField DataField="epsq2" HeaderText="epsq2" SortExpression="epsq2" />
                    <asp:BoundField DataField="epsq3" HeaderText="epsq3" SortExpression="epsq3" />
                    <asp:BoundField DataField="epsq4" HeaderText="epsq4" SortExpression="epsq4" />
                    <asp:BoundField DataField="kind" HeaderText="kind" SortExpression="kind" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [stockdata] WHERE ([kind] LIKE '%' + @kind + '%')">
                <SelectParameters>
                    <asp:SessionParameter Name="kind" SessionField="kind" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
