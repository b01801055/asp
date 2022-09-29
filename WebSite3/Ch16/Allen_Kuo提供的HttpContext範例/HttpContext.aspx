<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HttpContext.aspx.cs" Inherits="Book_Sample_Ch15__Book_Page_CrossPagePosting_Allen_Kuo提供的範例_HttpContext" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>HttpContext</title>
</head>
<body>
    <p>
        資料來源<a href="https://msdn.microsoft.com/zh-tw/library/system.web.httpcontext.aspx">https://msdn.microsoft.com/zh-tw/library/system.web.httpcontext.aspx</a></p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
    <div>
        Using the <b>current HttpContext</b> to get information about the current page.
        <br />
        <br />
        <br />
       <asp:Label id="OutputLabel" runat="server"></asp:Label> 
    </div>
    </form>
</body>
</html>
