<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserControl2.ascx.cs" Inherits="UserControl2" %>

<br />
===================================================================<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="466px" Width="960px">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" />
        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        <asp:BoundField DataField="article" HeaderText="article" SortExpression="article" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [test] WHERE [id] = @id" InsertCommand="INSERT INTO [test] ([test_time], [title], [article]) VALUES (@test_time, @title, @article)" SelectCommand="SELECT [id], [test_time], [title], [article] FROM [test] WHERE ([id] = @id)" UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [title] = @title, [article] = @article WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="test_time" Type="DateTime" />
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="article" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="id" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="test_time" Type="DateTime" />
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="article" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />
<br />
<br />
<br />
<br />
===================================================================<br />
<br />
