﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView_RowDataBound_4.aspx.cs" Inherits="Book_Sample_Ch11_GridView_RowDataBound_4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #CC0000;
            font-weight: bold;
        }
        .style2
        {
            font-size: small;
        }
        .style3
        {
            font-weight: bold;
            background-color: #FF99FF;
        }
        .style4
        {
            background-color: #FFFF99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        GridView的 <span class="style1">RowDataBound事件 #4</span><br />
        <a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.gridview.rowdatabound(v=VS.100).aspx">
        <span class="style2">
        http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.gridview.rowdatabound(v=VS.100).aspx</span></a>
        <br />
        <br />
        <b><span class="style4">RowDataBound事件</span> </b>與 <span class="style3">RowCreated事件</span>的差異？？<br />
        <br />
        <br />
        <br />
        <b>GridView裡面，只列出五筆記錄<br />
        </b>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource1" 
            onrowdatabound="GridView1_RowDataBound" 
            onrowcreated="GridView1_RowCreated">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="test_time" HeaderText="test_time" 
                        SortExpression="test_time" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT top 5 [id], [title], [test_time] FROM [test]">
        </asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
    
        <br />
        <a href="http://msdn.microsoft.com/zh-tw/library/ms178472(v=VS.90).aspx">http://msdn.microsoft.com/zh-tw/library/ms178472(v=VS.90).aspx</a><br />
        <br />
        <div class="LW_CollapsibleArea_TitleDiv" style="font-family: 'Segoe UI Semibold', 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif; font-size: 13px; padding: 0px; font-style: normal; margin-top: 9px; margin-bottom: 19px; color: rgb(0, 0, 0); font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 17.549999237060547px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            <div style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;">
                <a class="LW_CollapsibleArea_TitleAhref" href="javascript:void(0)" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; outline: none; text-decoration: none; color: rgb(0, 0, 0);" title="按一下摺疊。按兩下全部摺疊。"><span class="LW_CollapsibleArea_Title" style="font-family: 'Segoe UI Semibold', 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif; padding-left: 10px; color: rgb(0, 0, 0); font-size: 1.769em; display: block; overflow: hidden;">資料繫結控制項的資料繫結事件</span></a><div class="LW_CollapsibleArea_HrDiv" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; padding-top: 0px;">
                    <hr class="LW_CollapsibleArea_Hr" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border-style: none; color: rgb(229, 229, 229);" />
                </div>
            </div>
        </div>
        <div class="sectionblock" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif; padding-left: 15px; display: block; padding-bottom: 20px; color: rgb(0, 0, 0); font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 17.549999237060547px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
            <a name="sectionToggle3" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(19, 100, 196);"></a>
            <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 15px; line-height: 18px;">
                為了協助您了解網頁生命週期和資料繫結事件之間的關聯性 (Relationship)，下表列出資料繫結控制項 (例如<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.GridView"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.gridview(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">GridView</a></span>、<span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.DetailsView"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.detailsview(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">DetailsView</a></span><span class="Apple-converted-space">&nbsp;</span>和<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.FormView"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.formview(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">FormView</a></span><span class="Apple-converted-space">&nbsp;</span>控制項) 
                中的資料相關事件。</p>
            <div class="caption" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;">
            </div>
            <div class="tableSection" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;">
                <table frame="lhs" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border-collapse: collapse; padding: 0px; width: 958px; border: 1px solid rgb(187, 187, 187);" width="50%">
                    <tbody style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;">
                        <tr style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;">
                            <th style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border: 1px solid rgb(187, 187, 187); margin: 10px; padding: 10px 8px; background-color: rgb(237, 237, 237); color: rgb(99, 99, 99); text-align: left;">
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    <span class="label" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; font-weight: 700;">控制項事件</span></p>
                            </th>
                            <th style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border: 1px solid rgb(187, 187, 187); margin: 10px; padding: 10px 8px; background-color: rgb(237, 237, 237); color: rgb(99, 99, 99); text-align: left;">
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    <span class="label" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; font-weight: 700;">一般用法</span></p>
                            </th>
                        </tr>
                        <tr style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;">
                            <td style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border: 1px solid rgb(187, 187, 187); margin: 10px; padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top;">
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    <span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="E:System.Web.UI.Control.DataBinding"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.control.databinding(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">DataBinding</a></span></p>
                            </td>
                            <td style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border: 1px solid rgb(187, 187, 187); margin: 10px; padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top;">
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    這個事件是由資料繫結控制項在包含的控制項 (或<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.Page"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.page(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">Page</a></span><span class="Apple-converted-space">&nbsp;</span>物件) 之<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="E:System.Web.UI.Control.PreRender"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.control.prerender(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">PreRender</a></span><span class="Apple-converted-space">&nbsp;</span>事件前所引發，而且會將控制項的繫結開頭標記為資料。</p>
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    如果需要的話，這個事件可以用於手動開啟資料庫連接 (但通常資料來源控制項會將此認為不需要)。</p>
                            </td>
                        </tr>
                        <tr style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;">
                            <td style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border: 1px solid rgb(187, 187, 187); margin: 10px; padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top;">
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    <span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="E:System.Web.UI.WebControls.GridView.RowCreated"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.gridview.rowcreated(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">RowCreated</a></span><span class="Apple-converted-space">&nbsp;</span>(僅限<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.GridView"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.gridview(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">GridView</a></span>) 
                                    或<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="E:System.Web.UI.WebControls.DataList.ItemCreated"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.datalist.itemcreated(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">ItemCreated</a></span>(<span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.DataList"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.datalist(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">DataList</a></span>、<span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.DetailsView"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.detailsview(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">DetailsView</a></span>、<span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.SiteMapPath"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.sitemappath(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">SiteMapPath</a></span>、<span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.DataGrid"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.datagrid(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">DataGrid</a></span>、<span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.FormView"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.formview(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">FormView</a></span>、<span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.Repeater"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.repeater(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">Repeater</a></span>和<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.ListView"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.listview(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">ListView</a></span><span class="Apple-converted-space">&nbsp;</span>控制項)</p>
                            </td>
                            <td style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border: 1px solid rgb(187, 187, 187); margin: 10px; padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top;">
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    這個事件可以用於管理不與資料繫結相依的內容。例如，在執行階段，您可能會以程式設計方式將格式加入<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.GridView"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.gridview(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">GridView</a></span><span class="Apple-converted-space">&nbsp;</span>控制項中的頁首或頁尾資料列。</p>
                            </td>
                        </tr>
                        <tr style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;">
                            <td style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border: 1px solid rgb(187, 187, 187); margin: 10px; padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top;">
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    <span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="E:System.Web.UI.WebControls.GridView.RowDataBound"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.gridview.rowdatabound(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">RowDataBound</a></span><span class="Apple-converted-space">&nbsp;</span>(僅限<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.GridView"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.gridview(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">GridView</a></span>) 
                                    或<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="E:System.Web.UI.WebControls.DataList.ItemDataBound"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.datalist.itemdatabound(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">ItemDataBound</a></span>(<span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.DataList"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.datalist(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">DataList</a></span>、<span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.SiteMapPath"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.sitemappath(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">SiteMapPath</a></span>、<span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.DataGrid"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.datagrid(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">DataGrid</a></span>、<span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.Repeater"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.repeater(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">Repeater</a></span><span class="Apple-converted-space">&nbsp;</span>和<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.ListView"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.listview(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">ListView</a></span><span class="Apple-converted-space">&nbsp;</span>控制項)</p>
                            </td>
                            <td style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border: 1px solid rgb(187, 187, 187); margin: 10px; padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top;">
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    當這個事件發生時，資料可以在資料列或項目中使用，因此您可以格式化資料，或者設定子資料來源控制項上的<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="P:System.Web.UI.WebControls.SqlDataSource.FilterExpression"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.sqldatasource.filterexpression(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">FilterExpression</a></span><span class="Apple-converted-space">&nbsp;</span>屬性，進而在資料列或項目內顯示相關的資料。</p>
                            </td>
                        </tr>
                        <tr style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;">
                            <td style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border: 1px solid rgb(187, 187, 187); margin: 10px; padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top;">
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    <span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="E:System.Web.UI.WebControls.BaseDataBoundControl.DataBound"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.basedataboundcontrol.databound(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">DataBound</a></span></p>
                            </td>
                            <td style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; border: 1px solid rgb(187, 187, 187); margin: 10px; padding: 10px 8px; color: rgb(42, 42, 42); vertical-align: top;">
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    這個事件會在資料繫結控制項中標記資料繫結作業的最後部分。在<span class="Apple-converted-space">&nbsp;</span><span sdata="cer" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important;" target="T:System.Web.UI.WebControls.GridView"><a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.gridview(v=vs.90).aspx" style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; text-decoration: none; color: rgb(3, 105, 122);">GridView</a></span><span class="Apple-converted-space">&nbsp;</span>控制項中，所有資料列和任何子控制項的資料繫結已經完成。</p>
                                <p style="font-family: 'Microsoft JhengHei UI', 'Microsoft JhengHei', PMingLiU, MingLiU, 'Segoe UI', 'Lucida Grande', Verdana, Arial, Helvetica, sans-serif !important; color: rgb(42, 42, 42); margin-top: 0px; margin-bottom: 0px; padding-bottom: 0px; line-height: 18px;">
                                    這個事件可以用於格式化資料繫結內容，或是在其他相依於來自目前控制項內容之值的控制項中啟始資料繫結 (如需詳細資訊，請參閱本主題前面所述的「新增的控制項之 Catch-up 事件」)。</p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
</body>
</html>