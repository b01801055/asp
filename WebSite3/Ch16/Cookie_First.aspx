<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cookie_First.aspx.cs" Inherits="Ch16_Cookie_First" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>第一個網頁（範例 Cookie_First.aspx）</title>
    <style type="text/css">
        .style1
        {
            background-color: #FFFF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <span class="style1">第一個網頁（範例 Cookie_First.aspx）</span>會寫入 Cookie，<br />
        &nbsp;&nbsp;&nbsp;&nbsp; 然後將瀏覽器重新導向至第二個網頁。
    </div>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Style="color: #FF3300"></asp:Label>
    </form>

</body>
</html>

