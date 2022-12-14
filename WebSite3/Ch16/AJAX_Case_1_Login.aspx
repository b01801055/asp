<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAX_Case_1_Login.aspx.cs" Inherits="Ch16_AJAX_Case_1_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>聊天室 [AJAX版] ---- Login</title>
    <style type="text/css">
        .style1
        {
            font-size: large;
            font-weight: bold;
        }
        .style2
        {
            color: #FFCCFF;
            background-color: #FF6600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <span class="style1">聊天室[<span class="style2">AJAX版</span>]</span>，應用Application與Session的最好範例。
    </p>
    <hr />
    <p>
        請輸入您的大名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        您要用什麼顏色的字體？<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="darkred">紅色</asp:ListItem>
            <asp:ListItem Value="darkgreen">綠色</asp:ListItem>
            <asp:ListItem Value="darkblue">藍色</asp:ListItem>
            <asp:ListItem Value="darkgray">灰色</asp:ListItem>
            <asp:ListItem Value="blue">淺藍色</asp:ListItem>
            <asp:ListItem Value="green">淺綠色</asp:ListItem>
            <asp:ListItem Value="purple">紫色</asp:ListItem>
            <asp:ListItem Value="orange">橘色</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p align="center">
        <asp:Button ID="Button1" runat="server" Text="進入聊天室(AJAX版)" OnClick="Button1_Click" />
    </p>
    </form>

</body>
</html>

