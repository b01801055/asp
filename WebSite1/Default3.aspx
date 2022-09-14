<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="0" EnableViewState="False"></asp:Label>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Height="23px" OnClick="Button1_Click" Text="Button1" />
        </p>
        <input type="submit" text="Submit" />

        <input type="button" value="Button" />
    </form>
</body>
</html>
