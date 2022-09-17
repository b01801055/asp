<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calculator.aspx.cs" Inherits="calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            計算數字:<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>+
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>+
            <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>=
            <asp:Label ID="Label1" runat="server" ForeColor="#0066FF"></asp:Label>
        </div>
    </form>
</body>
</html>
