<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JavaScript_WindowsOpen_File.aspx.cs" Inherits="Book_Sample_Ch02_JavaScript_WindowsOpen_File" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" value="檢視123檔案(1)" onclick="window.open('file:///d:/123.txt')"/> 

            <br /><br />
            <input type="button" value="檢視123檔案(2)" onclick="window.open('123.txt')"/> 
        </div>
    </form>
</body>
</html>
