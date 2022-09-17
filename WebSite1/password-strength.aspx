<%@ Page Language="C#" AutoEventWireup="true" CodeFile="password-strength.aspx.cs" Inherits="password_strength" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <strong><span class="auto-style1">密碼強度</span></strong>（僅為簡單範例，給入門者練習而已）<br />
        <span class="auto-style2">練習 AutoPostBack屬性、TextBox的TextChanged事件</span><br />
        <br />
        請輸入文字、數字、符號<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        (AutoPostBack = True)<br />
        <br />
        請輸入姓名<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" />
        </div>
    </form>
</body>
</html>
