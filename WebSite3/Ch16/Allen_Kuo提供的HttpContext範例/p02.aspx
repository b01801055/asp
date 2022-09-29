<%@ Page Language="C#" AutoEventWireup="true" CodeFile="p02.aspx.cs" Inherits="p02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>透過HttpContext，跨網頁傳值</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        p02.aspx<hr />
        務必透過 Server.Transfer()，導向到這一頁才能作用！！
    </div>
    </form>
</body>
</html>
