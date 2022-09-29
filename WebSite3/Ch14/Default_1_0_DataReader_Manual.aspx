<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_1_0_DataReader_Manual.aspx.cs" Inherits="Ch14_Default_1_0_DataReader_Manual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    微軟SDK文件的範本----使用ADO.NET 的 <span style="color: #ff0000; background-color: #ffff33">SqlDataReader</span><br />
        Code Behind 完全手寫---- try...catch...finally<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
        BorderWidth="1px" CellPadding="2" Font-Size="Small" ForeColor="Black" GridLines="None">
        <FooterStyle BackColor="Tan" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
    </asp:GridView>
        <br />
        <br />
        ================================================================<br />
        <br />
        文章裡面有HTML標籤，該怎麼呈現呢？<br />
        <br />
        「編輯資料行」裡面，設定這個欄位的<strong>「HTML Encode = false」關閉</strong>即可<br />
        <br />
    <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#3366CC"
        BorderWidth="1px" CellPadding="4" Font-Size="Small" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="summary" HeaderText="summary" HtmlEncode="False" SortExpression="summary" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT top 10 [id], [title], [summary] FROM [test]"></asp:SqlDataSource>
    </form>

</body>
</html>

