<%@ Page Language="C#" Trace="true"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Session_1</title>
</head>
<body>
    <%
          //--註解：這段程式是 Inline Code，檔名為 Session_1.aspx。

          Session["my_test1"] = "***只有你一人與這一個瀏覽器***看得到這訊息！";
          Session["my_test2"] = 1000;

          Response.Write("****執行完畢！****");
    %>
</body>
</html>
