<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default29.aspx.cs" Inherits="Default29" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
  $( function() {
      $( "#TextBox1" ).datepicker();
  } );
  </script>
</head>
<body>
    <form id="form1" runat="server">
        
<p>Date: <input type="text" id="datepicker"></p>
=================================================

        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>

    </form>
</body>
</html>
