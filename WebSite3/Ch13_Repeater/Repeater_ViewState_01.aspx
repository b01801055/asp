<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Repeater_ViewState_01.aspx.cs" Inherits="Ch12_ListView_Repeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <div align="center">
            </HeaderTemplate>

            <ItemTemplate>

                    <small>�y�����G <%# Container.ItemIndex%> </small> &nbsp;&nbsp;&nbsp;&nbsp;

                    <%# DataBinder.Eval(Container.DataItem, "id")%>  &nbsp;&nbsp;&nbsp;&nbsp;
                    <b><%# DataBinder.Eval(Container.DataItem, "title")%> </b>

                <hr />
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
        &nbsp;
        ��Ӳա]�쥻��Repeater�^�AViewState &quot;�S��&quot;�����C</p>
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>
    

</body>
</html>
