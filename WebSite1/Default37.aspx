<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default37.aspx.cs" Inherits="Default37" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #FF0000;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
        批次刪除&nbsp; 多筆資料&nbsp;&nbsp; #1</p>
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource1" 
            PageSize="5">
            <Columns>
                <asp:TemplateField HeaderText="id(勾選,可刪除)" InsertVisible="False" 
                    SortExpression="id">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                        &nbsp;
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                    <ItemStyle BackColor="#FFCCFF" />
                </asp:TemplateField>

                <asp:BoundField DataField="test_time" HeaderText="test_time" 
                    SortExpression="test_time" DataFormatString="{0:d}" />
                <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="summary" HeaderText="summary" 
                    SortExpression="summary" />
                <asp:BoundField DataField="author" HeaderText="author" 
                    SortExpression="author" />
            </Columns>
        </asp:GridView>
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT * FROM [test]"></asp:SqlDataSource>
    </p>
        <p class="style2">
            請點選「要刪除的」的資料後，務必按下按鈕！
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="把勾選的那幾筆資料，刪除掉！" OnClick="Button1_Click" />
        </p>
        <p>
            &nbsp;</p>
    <p>
        您想刪除的那幾列（主索引鍵，P.K.）為：<asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p class="style1">
        <strong>這支程式有 Bug，當您第二次重新選擇時，無法反應最新的狀況。</strong></p>
    <div>
    
    </div>
    </form>
</body>
</html>
