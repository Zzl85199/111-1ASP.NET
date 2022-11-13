<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="B0944116_03.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="stockname" ForeColor="Black" GridLines="None">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="stockname" HeaderText="公司名稱" SortExpression="stockname" />
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                    </td>
                    <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" HeaderText="股價資訊">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <Fields>
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="stockname" HeaderText="stockname" SortExpression="stockname" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                <asp:BoundField DataField="epsq1" HeaderText="epsq1" SortExpression="epsq1" />
                                <asp:BoundField DataField="epsq2" HeaderText="epsq2" SortExpression="epsq2" />
                                <asp:BoundField DataField="epsq3" HeaderText="epsq3" SortExpression="epsq3" />
                                <asp:BoundField DataField="epsq4" HeaderText="epsq4" SortExpression="epsq4" />
                                <asp:BoundField DataField="kind" HeaderText="kind" SortExpression="kind" />
                                <asp:ImageField DataImageUrlField="stockname" DataImageUrlFormatString="images/{0}.jpg" HeaderText="公司標誌">
                                </asp:ImageField>
                            </Fields>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        </asp:DetailsView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\stock.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [stockname] FROM [stockdata]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [stockdata] WHERE ([stockname] = @stockname)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" DefaultValue="味全" Name="stockname" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
