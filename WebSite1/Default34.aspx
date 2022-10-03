<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default34.aspx.cs" Inherits="Default34" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 40px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" PageSize="5">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="chinese" HeaderText="chinese" SortExpression="chinese" />
                    <asp:BoundField DataField="math" HeaderText="math" SortExpression="math" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM [student_test]" DeleteCommand="DELETE FROM [student_test] WHERE [id] = @id" InsertCommand="INSERT INTO [student_test] ([name], [student_id], [city], [chinese], [math]) VALUES (@name, @student_id, @city, @chinese, @math)" UpdateCommand="UPDATE [student_test] SET [name] = @name, [student_id] = @student_id, [city] = @city, [chinese] = @chinese, [math] = @math WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="student_id" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="chinese" Type="Int32" />
                    <asp:Parameter Name="math" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="student_id" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="chinese" Type="Int32" />
                    <asp:Parameter Name="math" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
