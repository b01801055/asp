<%@ Page Language="C#" AutoEventWireup="true" CodeFile="p01.aspx.cs" Inherits="p01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>透過HttpContext，跨網頁傳值</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        p01.aspx <hr />

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="Button_按下以後，會 Server.Transfer()到下一頁（p02.aspx）" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
