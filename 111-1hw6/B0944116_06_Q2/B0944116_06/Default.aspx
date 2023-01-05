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
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />

            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\stock.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [stockdata] WHERE ([stockname] = @stockname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="stockname" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>


        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label5" runat="server" Text="請選擇想要查詢的股票名稱:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="stockname" DataValueField="stockname" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\stock.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [id], [stockname] FROM [stockdata]"></asp:SqlDataSource>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
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
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="資料表更新時間:"></asp:Label>
            <asp:Label ID="Label4" runat="server" ForeColor="#6666FF"></asp:Label>

            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
