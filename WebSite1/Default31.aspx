<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default31.aspx.cs" Inherits="Default31" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <style>
        .toggler {
            width: 500px;
            height: 200px;
            position: relative;
        }

        #button {
            padding: .5em 1em;
            text-decoration: none;
        }

        #effect {
            width: 240px;
            padding: 1em;
            border: 1px solid #000;
            background: #eee;
            color: #333;
        }

        .newClass {
            text-indent: 40px;
            letter-spacing: .4em;
            width: 410px;
            height: 120px;
            padding: 30px;
            margin: 10px;
            font-size: 1.1em;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#button").on("click", function () {
                $("#effect").addClass("newClass", 1000, callback);
            });

            function callback() {
                setTimeout(function () {
                    $("#effect").removeClass("newClass");
                }, 1500);
            }
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="toggler">
            <div id="effect" class="ui-corner-all">
                Etiam libero neque, luctus a, eleifend nec, semper at, lorem. Sed pede.
            </div>
        </div>


    </form>
    <button id="button" class="ui-state-default ui-corner-all">Run Effect</button>
</body>
</html>
