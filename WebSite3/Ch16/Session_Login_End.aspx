<%@ Page Language="C#"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <!-- ��ƨӷ��Ghttp://tutorialzine.com/2011/12/countdown-jquery/ -->
    <!-- Our CSS stylesheet file�C�e�����[�Ӥw�A�S����L�γB�I�]���O���I�I�I -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" />
    <link rel="stylesheet" href="countdown/assets/css/styles.css" />
    <link rel="stylesheet" href="countdown/assets/countdown/jquery.countdown.css" />

    <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
</head>
<body>

    <%
        //************************************************************************(start)***
        //  Session�p�G�O null�A�@�ϥδN�|�����C  �̦n���ˬd�@�U�O�_�� null �A�аѾ\ defense.aspx ���g�k
        if (Session["Login"] != null)
        {
            if (Session["Login"].ToString() == "OK")   {
                Response.Write("<h3>���߱z�A�z���\�n�J�A�~�|�ݨ��o�@���I Session_Loging_End.aspx</h3><hr />");
            }
            else   {
                Response.Write("<h3><font color=red><b>�Y��ĵ�i�I</b></font>�z���b���B�K�X���~�I�O�D�k�ϥΪ̡�</h3>");
                Response.End();     //--���ѡG�{���ߨ�פ�I
            }
        }

        Response.Write("<br /><br /><font color=blue><h3>���������޲z�ϡA�~�H���J�I</h3></font>");

        Response.Write("<h3>Session.SessionID -- " + Session.SessionID + "</h3>");
        //***************************************************************************(end)***
    %>



    <!--  �e�����[�Ӥw�A�S����L�γB�I�]���O���I�I�I-->
    <div id="countdown"></div>
    <!-- *** �]�w�� ,�Ш�o�̭ק�.   countdown/assets/js/script.js *** -->

    <!-- JavaScript includes �C�e�����[�Ӥw�A�S����L�γB�I�]���O���I�I�I-->
    <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="countdown/assets/countdown/jquery.countdown.js"></script>
    <script src="countdown/assets/js/script.js"></script>
</body>
</html>
