<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewState_Base64.aspx.cs" Inherits="Book_Sample_Ch16_ViewState_Base64" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #FF0000" Text="0"></asp:Label>
        <br /><br />
        <asp:Button ID="Button1" runat="server" Text="Button_按下按鈕，數字會累加" OnClick="Button1_Click" />
    
    </div>
        <p>==============================================</p>
        <p>執行後，HTML畫面的原始檔可以發現 ViewState</p>
        <p>
            &lt;input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"</p>
        <p>
            &nbsp;value="liGGGMOdEBgjBiBsr3KXKN+puyecsPKAm025VU9W8KmE3ytVD0KgHZcZ2GGEdd6CqVPHAAfIHkA5vTO8uXxJqyhPI42twdFJ8ikNywgiXkfEVUbJQLQqvAo76Vpy5eh/CT7ujuncTE5DiQuH5AtLN19yAVMf+mi0wArHRFdYx3la4yDySwjkz8exaFhyw/WALKc8PIV8vXflUwwUEF6lN8Kx+8Ym+RmqjEYroWH4dp0nJHEXKnJACCtwN+CgAUyhAWcIl9pwvR25qU7RoohQiaxCOY2tvUC1A4/86Cjllze3m2DF5euaf5S/EFjuMXEw+dCxNVB/9LqSy8iCNwY+kz8+gxtTVBVHPlZ5quou1B9YCWUN8eVEgBFheqxl5a1A&quot;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

