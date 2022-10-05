<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserControl1.ascx.cs" Inherits="UserControl1" %>

<p>
    ============================================
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="205px" Width="742px">
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
            <asp:BoundField DataField="article" HeaderText="article" SortExpression="article" />
            <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [id], [test_time], [title], [summary], [article], [author] FROM [test] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
</form>
    <p>
        &nbsp;
</p>
<p>
    &nbsp;
</p>
<p>
    ============================================
</p>
