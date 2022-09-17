<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            name:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            password:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            double check:<asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <p>
            birthday:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </p>
    </form>
</body>
</html>
