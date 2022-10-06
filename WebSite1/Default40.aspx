<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default40.aspx.cs" Inherits="Default40" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            數字1:<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            數字2:<asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button_Click" Text="+" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="-" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="*" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="/" />
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="=" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
