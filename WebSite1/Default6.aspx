<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="2222_value">2222</asp:ListItem>
                <asp:ListItem Value="111_value">111</asp:ListItem>
                <asp:ListItem Value="33_value">33</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />

        </div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Value="2222_value">2222</asp:ListItem>
            <asp:ListItem Value="111_value">111</asp:ListItem>
            <asp:ListItem Value="33_value">33</asp:ListItem>
        </asp:RadioButtonList>
    </form>
</body>
</html>
