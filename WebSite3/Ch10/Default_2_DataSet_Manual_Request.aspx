<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_2_DataSet_Manual_Request.aspx.cs" Inherits="Ch10_Default_2_DataSet_Manual_Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�z�L Request���o�u�s��Ҧ��v�U�A�ק�᪺�ƭ�</title>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            �ϥ�ADO.NET �� <span style="color: #0033cc; background-color: #ffff33">SqlDataAdapter /
            DataSet</span>�C<br />
            Code Behind ������g
        <br />
            ---------------------------------------------------------------------------------<br />
            <br />
            <span class="auto-style1"><strong>�z�L Request���o�u�s��Ҧ��v�U�A�ק�᪺�ƭ�</strong></span><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="3" PageSize="5" DataKeyNames="id"
                OnPageIndexChanging="GridView1_PageIndexChanging"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                OnRowUpdating="GridView1_RowUpdating" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                </Columns>
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [test] WHERE [id] = @id" InsertCommand="INSERT INTO [test] ([test_time], [title], [author]) VALUES (@test_time, @title, @author)" SelectCommand="SELECT [id], [test_time], [title], [author] FROM [test]" UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [title] = @title, [author] = @author WHERE [id] = @id"></asp:SqlDataSource>

            <br />
            <br />

        </div>
        <p> &nbsp;</p>

    </form>

</body>
</html>
