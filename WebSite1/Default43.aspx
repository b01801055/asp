<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default43.aspx.cs" Inherits="Default43" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        </div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="id"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM [test]"></asp:SqlDataSource>
        <p>
            &nbsp;</p>
        <%= DateTime.Now.ToString() %>
        <p>
            =========================================================</p>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
            <ContentTemplate>
                                <%= DateTime.Now.ToString() %><br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="99px" Width="544px">
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
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM [test] WHERE ([id] = @id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Timer ID="Timer1" runat="server" Interval="3000">
                </asp:Timer>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick">
                </asp:AsyncPostBackTrigger>
            </Triggers>          
        </asp:UpdatePanel>
    </form>
    <p>
    </p>
</body>
</html>
