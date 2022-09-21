<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default16.aspx.cs" Inherits="Default16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" />
                    <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
                    <asp:BoundField DataField="article" HeaderText="article" SortExpression="article" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                    <asp:BoundField DataField="hit_no" HeaderText="hit_no" SortExpression="hit_no" />
                    <asp:BoundField DataField="get_no" HeaderText="get_no" SortExpression="get_no" />
                    <asp:BoundField DataField="email_no" HeaderText="email_no" SortExpression="email_no" />
                    <asp:BoundField DataField="approved" HeaderText="approved" SortExpression="approved" />
                    <asp:ButtonField CommandName="myInsert" HeaderText="自己寫的新增功能(按鈕)" Text="新增 Insert" />
                </Columns>
                <EmptyDataTemplate>
                    新增模式<br /> 
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="42px" Width="222px">
                        <Fields>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" />
                            <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                            <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
                            <asp:BoundField DataField="article" HeaderText="article" SortExpression="article" />
                            <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                            <asp:BoundField DataField="hit_no" HeaderText="hit_no" SortExpression="hit_no" />
                            <asp:BoundField DataField="get_no" HeaderText="get_no" SortExpression="get_no" />
                            <asp:BoundField DataField="email_no" HeaderText="email_no" SortExpression="email_no" />
                            <asp:BoundField DataField="approved" HeaderText="approved" SortExpression="approved" />
                            <asp:CommandField ShowInsertButton="True" />
                        </Fields>
                    </asp:DetailsView>
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [test] WHERE [id] = @original_id AND (([test_time] = @original_test_time) OR ([test_time] IS NULL AND @original_test_time IS NULL)) AND (([class] = @original_class) OR ([class] IS NULL AND @original_class IS NULL)) AND (([title] = @original_title) OR ([title] IS NULL AND @original_title IS NULL)) AND (([summary] = @original_summary) OR ([summary] IS NULL AND @original_summary IS NULL)) AND (([article] = @original_article) OR ([article] IS NULL AND @original_article IS NULL)) AND (([author] = @original_author) OR ([author] IS NULL AND @original_author IS NULL)) AND (([hit_no] = @original_hit_no) OR ([hit_no] IS NULL AND @original_hit_no IS NULL)) AND (([get_no] = @original_get_no) OR ([get_no] IS NULL AND @original_get_no IS NULL)) AND (([email_no] = @original_email_no) OR ([email_no] IS NULL AND @original_email_no IS NULL)) AND (([approved] = @original_approved) OR ([approved] IS NULL AND @original_approved IS NULL))" InsertCommand="INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author], [hit_no], [get_no], [email_no], [approved]) VALUES (@test_time, @class, @title, @summary, @article, @author, @hit_no, @get_no, @email_no, @approved)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [test]" UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [class] = @class, [title] = @title, [summary] = @summary, [article] = @article, [author] = @author, [hit_no] = @hit_no, [get_no] = @get_no, [email_no] = @email_no, [approved] = @approved WHERE [id] = @original_id AND (([test_time] = @original_test_time) OR ([test_time] IS NULL AND @original_test_time IS NULL)) AND (([class] = @original_class) OR ([class] IS NULL AND @original_class IS NULL)) AND (([title] = @original_title) OR ([title] IS NULL AND @original_title IS NULL)) AND (([summary] = @original_summary) OR ([summary] IS NULL AND @original_summary IS NULL)) AND (([article] = @original_article) OR ([article] IS NULL AND @original_article IS NULL)) AND (([author] = @original_author) OR ([author] IS NULL AND @original_author IS NULL)) AND (([hit_no] = @original_hit_no) OR ([hit_no] IS NULL AND @original_hit_no IS NULL)) AND (([get_no] = @original_get_no) OR ([get_no] IS NULL AND @original_get_no IS NULL)) AND (([email_no] = @original_email_no) OR ([email_no] IS NULL AND @original_email_no IS NULL)) AND (([approved] = @original_approved) OR ([approved] IS NULL AND @original_approved IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_test_time" Type="DateTime" />
                    <asp:Parameter Name="original_class" Type="String" />
                    <asp:Parameter Name="original_title" Type="String" />
                    <asp:Parameter Name="original_summary" Type="String" />
                    <asp:Parameter Name="original_article" Type="String" />
                    <asp:Parameter Name="original_author" Type="String" />
                    <asp:Parameter Name="original_hit_no" Type="Int32" />
                    <asp:Parameter Name="original_get_no" Type="Int32" />
                    <asp:Parameter Name="original_email_no" Type="Int32" />
                    <asp:Parameter Name="original_approved" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="test_time" Type="DateTime" />
                    <asp:Parameter Name="class" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="summary" Type="String" />
                    <asp:Parameter Name="article" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                    <asp:Parameter Name="hit_no" Type="Int32" />
                    <asp:Parameter Name="get_no" Type="Int32" />
                    <asp:Parameter Name="email_no" Type="Int32" />
                    <asp:Parameter Name="approved" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="test_time" Type="DateTime" />
                    <asp:Parameter Name="class" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="summary" Type="String" />
                    <asp:Parameter Name="article" Type="String" />
                    <asp:Parameter Name="author" Type="String" />
                    <asp:Parameter Name="hit_no" Type="Int32" />
                    <asp:Parameter Name="get_no" Type="Int32" />
                    <asp:Parameter Name="email_no" Type="Int32" />
                    <asp:Parameter Name="approved" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_test_time" Type="DateTime" />
                    <asp:Parameter Name="original_class" Type="String" />
                    <asp:Parameter Name="original_title" Type="String" />
                    <asp:Parameter Name="original_summary" Type="String" />
                    <asp:Parameter Name="original_article" Type="String" />
                    <asp:Parameter Name="original_author" Type="String" />
                    <asp:Parameter Name="original_hit_no" Type="Int32" />
                    <asp:Parameter Name="original_get_no" Type="Int32" />
                    <asp:Parameter Name="original_email_no" Type="Int32" />
                    <asp:Parameter Name="original_approved" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <div>
        </div>
    </form>
</body>
</html>
