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
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" GroupItemCount="4" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color: #FFFFFF;color: #284775;">股票代號:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />公司名稱:
                        <asp:Label ID="stocknameLabel" runat="server" Text='<%# Eval("stockname") %>' />
                        <br />股價:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />第一季每股獲利:
                        <asp:Label ID="epsq1Label" runat="server" Text='<%# Eval("epsq1") %>' />
                        <br />第二季每股獲利:
                        <asp:Label ID="epsq2Label" runat="server" Text='<%# Eval("epsq2") %>' />
                        <br />第三季每股獲利:
                        <asp:Label ID="epsq3Label" runat="server" Text='<%# Eval("epsq3") %>' />
                        <br />第四季每股獲利:
                        <asp:Label ID="epsq4Label" runat="server" Text='<%# Eval("epsq4") %>' />
                        <br />種類:
                        <asp:Label ID="kindLabel" runat="server" Text='<%# Eval("kind") %>' />
                        <br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        <br />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color: #999999;">股票代號:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        <br />公司名稱:
                        <asp:TextBox ID="stocknameTextBox" runat="server" Text='<%# Bind("stockname") %>' />
                        <br />股價:
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        <br />第一季每股獲利:
                        <asp:TextBox ID="epsq1TextBox" runat="server" Text='<%# Bind("epsq1") %>' />
                        <br />第二季每股獲利:
                        <asp:TextBox ID="epsq2TextBox" runat="server" Text='<%# Bind("epsq2") %>' />
                        <br />第三季每股獲利:
                        <asp:TextBox ID="epsq3TextBox" runat="server" Text='<%# Bind("epsq3") %>' />
                        <br />第四季每股獲利:
                        <asp:TextBox ID="epsq4TextBox" runat="server" Text='<%# Bind("epsq4") %>' />
                        <br />種類:
                        <asp:TextBox ID="kindTextBox" runat="server" Text='<%# Bind("kind") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        <br /></td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>未傳回資料。</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
<td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">股票代號:
                        <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                        <br />公司名稱:
                        <asp:TextBox ID="stocknameTextBox" runat="server" Text='<%# Bind("stockname") %>' />
                        <br />股價:
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        <br />第一季每股獲利:
                        <asp:TextBox ID="epsq1TextBox" runat="server" Text='<%# Bind("epsq1") %>' />
                        <br />第二季每股獲利:
                        <asp:TextBox ID="epsq2TextBox" runat="server" Text='<%# Bind("epsq2") %>' />
                        <br />第三季每股獲利:
                        <asp:TextBox ID="epsq3TextBox" runat="server" Text='<%# Bind("epsq3") %>' />
                        <br />第四季每股獲利:
                        <asp:TextBox ID="epsq4TextBox" runat="server" Text='<%# Bind("epsq4") %>' />
                        <br />種類:
                        <asp:TextBox ID="kindTextBox" runat="server" Text='<%# Bind("kind") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                        <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color: #E0FFFF; color: #333333;">股票代號:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />公司名稱:
                        <asp:Label ID="stocknameLabel" runat="server" Text='<%# Eval("stockname") %>' />
                        <br />股價:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />第一季每股獲利:
                        <asp:Label ID="epsq1Label" runat="server" Text='<%# Eval("epsq1") %>' />
                        <br />第二季每股獲利:
                        <asp:Label ID="epsq2Label" runat="server" Text='<%# Eval("epsq2") %>' />
                        <br />第三季每股獲利:
                        <asp:Label ID="epsq3Label" runat="server" Text='<%# Eval("epsq3") %>' />
                        <br />第四季每股獲利:
                        <asp:Label ID="epsq4Label" runat="server" Text='<%# Eval("epsq4") %>' />
                        <br />種類:
                        <asp:Label ID="kindLabel" runat="server" Text='<%# Eval("kind") %>' />
                        <br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        <br />
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />stockname:
                        <asp:Label ID="stocknameLabel" runat="server" Text='<%# Eval("stockname") %>' />
                        <br />price:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />epsq1:
                        <asp:Label ID="epsq1Label" runat="server" Text='<%# Eval("epsq1") %>' />
                        <br />epsq2:
                        <asp:Label ID="epsq2Label" runat="server" Text='<%# Eval("epsq2") %>' />
                        <br />epsq3:
                        <asp:Label ID="epsq3Label" runat="server" Text='<%# Eval("epsq3") %>' />
                        <br />epsq4:
                        <asp:Label ID="epsq4Label" runat="server" Text='<%# Eval("epsq4") %>' />
                        <br />kind:
                        <asp:Label ID="kindLabel" runat="server" Text='<%# Eval("kind") %>' />
                        <br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\stock.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [stockdata] WHERE [id] = @id" InsertCommand="INSERT INTO [stockdata] ([id], [stockname], [price], [epsq1], [epsq2], [epsq3], [epsq4], [kind]) VALUES (@id, @stockname, @price, @epsq1, @epsq2, @epsq3, @epsq4, @kind)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [stockdata]" UpdateCommand="UPDATE [stockdata] SET [stockname] = @stockname, [price] = @price, [epsq1] = @epsq1, [epsq2] = @epsq2, [epsq3] = @epsq3, [epsq4] = @epsq4, [kind] = @kind WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="stockname" Type="String" />
                    <asp:Parameter Name="price" Type="Double" />
                    <asp:Parameter Name="epsq1" Type="Double" />
                    <asp:Parameter Name="epsq2" Type="Double" />
                    <asp:Parameter Name="epsq3" Type="Double" />
                    <asp:Parameter Name="epsq4" Type="Double" />
                    <asp:Parameter Name="kind" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="stockname" Type="String" />
                    <asp:Parameter Name="price" Type="Double" />
                    <asp:Parameter Name="epsq1" Type="Double" />
                    <asp:Parameter Name="epsq2" Type="Double" />
                    <asp:Parameter Name="epsq3" Type="Double" />
                    <asp:Parameter Name="epsq4" Type="Double" />
                    <asp:Parameter Name="kind" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
