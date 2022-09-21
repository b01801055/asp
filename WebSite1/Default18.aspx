<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default18.aspx.cs" Inherits="Default18" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                    <asp:HyperLinkField DataNavigateUrlFields="id,title" DataNavigateUrlFormatString="Display.aspx?id={0}&amp;title={1}" HeaderText="HyperLinkField" Text=".......More.........." />
                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Display.aspx?id={0}" DataTextField="title" HeaderText="....................." />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [id], [title], [author] FROM [test]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
