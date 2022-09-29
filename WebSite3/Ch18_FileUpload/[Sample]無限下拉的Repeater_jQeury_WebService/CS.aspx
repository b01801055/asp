﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="CS" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        var pageIndex = 1;
        var pageCount;

        //**************************************************
        $(window).scroll(function () {
            if ($(window).scrollTop() == $(document).height() - $(window).height()) {
                GetRecords();   //計算視窗高度（Scroll Bar）被拉到下面就會啟動！展示更多記錄。
            }
        }); 
        //**************************************************

        function GetRecords() {
            pageIndex++;
            if (pageIndex == 2 || pageIndex <= pageCount) {
                $("#loader").show();
                $.ajax({
                    type: "POST",
                    url: "CS.aspx/GetCustomers",     // *** 記得修改檔名 ***
                    data: '{pageIndex: ' + pageIndex + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: OnSuccess,
                    failure: function (response) {
                        alert(response.d);
                    },
                    error: function (response) {
                        alert(response.d);
                    }
                });
            }
        }
        function OnSuccess(response) {
            var xmlDoc = $.parseXML(response.d);
            var xml = $(xmlDoc);
            pageCount = parseInt(xml.find("PageCount").eq(0).find("PageCount").text());
            var customers = xml.find("Customers");    // Web Service傳回的XML文件，DataSet裡面的DataTable名稱

            customers.each(function () {    // 跑迴圈
                var customer = $(this);
                var table = $("#dvCustomers table").eq(0).clone(true);

                // Repeater裡面每一筆記錄的「欄位」，都會有一個<span class="...">
                $(".name", table).html(customer.find("ContactName").text());
                $(".city", table).html(customer.find("City").text());
                $(".postal", table).html(customer.find("PostalCode").text());
                $(".country", table).html(customer.find("Country").text());
                $(".phone", table).html(customer.find("Phone").text());
                $(".fax", table).html(customer.find("Fax").text());

                $("#dvCustomers").append(table).append("<br />XXXXXXXXXXXX<br /><br />");
                // 畫出下一個表格<table>
            });
            $("#loader").hide();
        }
    </script>
</head>
<body style="font-family: Arial; font-size: 10pt">

        <strong><span style="font-size: medium;">無限下拉（延伸）的報表，搭配 jQuery</span></strong>
        <br /><br />
        1. 請先在您的資料庫裡面，設定好「預存程序」<br />        <br />
        2. 第一次執行時，先把您的瀏覽器 "縮小"一點（高度 "短"一些，把瀏覽器的底部邊界，向上拉一點點），不要放大瀏覽器、不要佔滿整個螢幕。<br />        <br />
        3. 我在Repeater裡面加入流水號&lt;%# Container.ItemIndex + 1 %&gt;，<strong>請您觀察 "10號"以後的變化</strong>。就能看出後續是jQuery + Web Service動作，而非ASP.NET <strong>PostBack</strong>運作<br />        <br />
        4. 資料來源：<a href="http://www.aspsnippets.com/Articles/Implement-Infinite-Scroll-Endless-Scroll-in-ASPNet-using-jQuery-AJAX.aspx">http://www.aspsnippets.com/Articles/Implement-Infinite-Scroll-Endless-Scroll-in-ASPNet-using-jQuery-AJAX.aspx</a>
        <br /><br /><br />

    <form id="form1" runat="server">

    <table>
    <tr><td>
        <div id="dvCustomers">  <!-- ************ -->

            Reapeater的「EnableViewState屬性」可以關閉。<br />

            <asp:Repeater ID="Repeater1" runat="server" EnableViewState="False">
                <ItemTemplate>
                        <table id="MIS2000Lab" border="1" style="width: 280px; height: 100px;
                        border: dashed 2px #04AFEF; background-color: #B0E2F5">
                        <tr>
                            <td>流水號：<b><%# Container.ItemIndex + 1 %></b>--
                                <b><u><span class="name"><%# Eval("ContactName") %></span></u></b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>城市: </b><span class="city">  <!-- jQuery會對應這個<span class="...">來操作 -->
                                                            <%# Eval("City") %></span><br />
                                <b>郵遞區號: </b><span class="postal"><%# Eval("PostalCode") %></span><br />
                                <b>國別: </b><span class="country"><%# Eval("Country")%></span><br />
                                <b>電話: </b><span class="phone"><%# Eval("Phone")%></span><br />
                                <b>傳真: </b><span class="fax"><%# Eval("Fax")%></span><br />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:Repeater>
            ******************************************************************<br />
            在Repeater裡面加入流水號&lt;%# Container.ItemIndex + 1 %&gt;，，<strong>請您觀察 "10號"以後的變化</strong>。就能看出後續是jQuery + Web Service動作，而非ASP.NET <strong>PostBack</strong>運作<br />
            ******************************************************************<br />
        </div>
    </td>
    <td valign="bottom">
        <img id="loader" alt="" src="loading.gif" style="display: none" />
        <!-- 動畫小圖示，載入資料時會出現 -->
    </td>
    </tr>
    </table>
    </form>
</body>
</html>
