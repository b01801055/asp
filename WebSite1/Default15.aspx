<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default15.aspx.cs" Inherits="Default15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            title:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            summary:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
            <br />
            <br />
            ==============================================================<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="296px" Width="776px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
                    <asp:BoundField DataField="article" HeaderText="article" SortExpression="article" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" CancelSelectOnNullParameter="False" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [id], [title], [summary], [article] FROM [test] WHERE (([title] LIKE '%' + @title + '%') AND ([summary] LIKE '%' + @summary + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="title" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="summary" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <p>
            &nbsp;</p>
        <p>
            *****************************************************************************</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource2" GridLines="Horizontal">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    test_time:
                    <asp:TextBox ID="test_timeTextBox" runat="server" Text='<%# Bind("test_time") %>' />
                    <br />
                    class:
                    <asp:TextBox ID="classTextBox" runat="server" Text='<%# Bind("class") %>' />
                    <br />
                    title:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    summary:
                    <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
                    <br />
                    article:
                    <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' />
                    <br />
                    author:
                    <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                    <br />
                    hit_no:
                    <asp:TextBox ID="hit_noTextBox" runat="server" Text='<%# Bind("hit_no") %>' />
                    <br />
                    get_no:
                    <asp:TextBox ID="get_noTextBox" runat="server" Text='<%# Bind("get_no") %>' />
                    <br />
                    email_no:
                    <asp:TextBox ID="email_noTextBox" runat="server" Text='<%# Bind("email_no") %>' />
                    <br />
                    approved:
                    <asp:TextBox ID="approvedTextBox" runat="server" Text='<%# Bind("approved") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <InsertItemTemplate>
                    test_time:
                    <asp:TextBox ID="test_timeTextBox" runat="server" Text='<%# Bind("test_time") %>' />
                    <br />
                    class:
                    <asp:TextBox ID="classTextBox" runat="server" Text='<%# Bind("class") %>' />
                    <br />
                    title:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    summary:
                    <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
                    <br />
                    article:
                    <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' />
                    <br />
                    author:
                    <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                    <br />
                    hit_no:
                    <asp:TextBox ID="hit_noTextBox" runat="server" Text='<%# Bind("hit_no") %>' />
                    <br />
                    get_no:
                    <asp:TextBox ID="get_noTextBox" runat="server" Text='<%# Bind("get_no") %>' />
                    <br />
                    email_no:
                    <asp:TextBox ID="email_noTextBox" runat="server" Text='<%# Bind("email_no") %>' />
                    <br />
                    approved:
                    <asp:TextBox ID="approvedTextBox" runat="server" Text='<%# Bind("approved") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    test_time:
                    <asp:Label ID="test_timeLabel" runat="server" Text='<%# Bind("test_time") %>' />
                    <br />
                    class:
                    <asp:Label ID="classLabel" runat="server" Text='<%# Bind("class") %>' />
                    <br />
                    title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    summary:
                    <asp:Label ID="summaryLabel" runat="server" Text='<%# Bind("summary") %>' />
                    <br />
                    article:
                    <asp:Label ID="articleLabel" runat="server" Text='<%# Bind("article") %>' />
                    <br />
                    author:
                    <asp:Label ID="authorLabel" runat="server" Text='<%# Bind("author") %>' />
                    <br />
                    hit_no:
                    <asp:Label ID="hit_noLabel" runat="server" Text='<%# Bind("hit_no") %>' />
                    <br />
                    get_no:
                    <asp:Label ID="get_noLabel" runat="server" Text='<%# Bind("get_no") %>' />
                    <br />
                    email_no:
                    <asp:Label ID="email_noLabel" runat="server" Text='<%# Bind("email_no") %>' />
                    <br />
                    approved:
                    <asp:Label ID="approvedLabel" runat="server" Text='<%# Bind("approved") %>' />
                    <br />
                </ItemTemplate>
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM [test] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
