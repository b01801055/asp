<%@ Page Language="C#"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>App_1.aspx</title>
</head>
<body>
    <%
          //--註解：這段程式是 Inline Code，檔名為 App_1.aspx。

          Application["my_test1"] = "Hello!您好，任何人都看的到這段訊息！";
          Application["my_test2"] = 1000;

          Response.Write("****執行完畢！****");
    %>
</body>
</html>
