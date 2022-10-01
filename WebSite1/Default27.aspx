<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default27.aspx.cs" Inherits="Default27" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                <ItemTemplate>

                    <%# Eval("title") %><br />
                </ItemTemplate>

            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [test] WHERE [id] = @id" InsertCommand="INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author], [hit_no], [get_no], [email_no], [approved]) VALUES (@test_time, @class, @title, @summary, @article, @author, @hit_no, @get_no, @email_no, @approved)" SelectCommand="SELECT * FROM [test]" UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [class] = @class, [title] = @title, [summary] = @summary, [article] = @article, [author] = @author, [hit_no] = @hit_no, [get_no] = @get_no, [email_no] = @email_no, [approved] = @approved WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
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
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
