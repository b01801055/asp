<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Repeater_ViewState_03.aspx.cs" Inherits="Ch12_ListView_Repeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        ��� PlaceHolder�Ө��N Panel�ոլݡH<br />
        <br />
        <br />
        <br />

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <div align="center">
            </HeaderTemplate>

            <ItemTemplate>
                <asp:PlaceHolder runat="server" EnableViewState="false">

                    <small>�y�����G <%# Container.ItemIndex%> </small> &nbsp;&nbsp;&nbsp;&nbsp;
                    <%# DataBinder.Eval(Container.DataItem, "id")%>  &nbsp;&nbsp;&nbsp;&nbsp;
                    <b><%# DataBinder.Eval(Container.DataItem, "title")%> </b>
                    <hr />

                </asp:PlaceHolder>
            </ItemTemplate>

            <FooterTemplate>
                </div>
            </FooterTemplate>
        </asp:Repeater>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
            SelectCommand="SELECT [id],[title], [summary] FROM [test]"></asp:SqlDataSource>

    </div>


    </form>

    <p>
        ��ƨӷ��G<a href="http://blog.miniasp.com/post/2008/11/29/Using-PlaceHolder-to-reduce-ViewState-size.aspx">http://blog.miniasp.com/post/2008/11/29/Using-PlaceHolder-to-reduce-ViewState-size.aspx</a>&nbsp;
    </p>
    <p>
        &nbsp;</p>


</body>
</html>
