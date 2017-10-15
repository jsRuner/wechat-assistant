<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <title>管理员后台-微信助手</title>
    <meta name="keywords" content="微信助手" />
    <meta name="description" content="微信助手">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Muhammad Usman">
    <!-- The styles -->
    <link id="bs-css" href="/static/css/bootstrap-cerulean.css" rel="stylesheet">
    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }
    </style>
    <link href="/static/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="/static/css/charisma-app.css" rel="stylesheet">
    <link href="/static/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
    <link href='/static/css/fullcalendar.css' rel='stylesheet'>
    <link href='/static/css/fullcalendar.print.css' rel='stylesheet'  media='print'>
    <link href='/static/css/chosen.css' rel='stylesheet'>
    <link href='/static/css/uniform.default.css' rel='stylesheet'>
    <link href='/static/css/colorbox.css' rel='stylesheet'>
    <link href='/static/css/jquery.cleditor.css' rel='stylesheet'>
    <link href='/static/css/jquery.noty.css' rel='stylesheet'>
    <link href='/static/css/noty_theme_default.css' rel='stylesheet'>
    <link href='/static/css/elfinder.min.css' rel='stylesheet'>
    <link href='/static/css/elfinder.theme.css' rel='stylesheet'>
    <link href='/static/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='/static/css/opa-icons.css' rel='stylesheet'>
    <link href='/static/css/uploadify.css' rel='stylesheet'>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="/static/img/favicon.ico">

</head>


<body>
<!-- topbar starts -->
<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="/brand/index"> <img alt="Charisma Logo" src="/static/img/logo20.png" /> <span>${sessionScope.userName}</span></a>



            <!-- user dropdown starts -->
            <div class="btn-group pull-right" >
                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="icon-user"></i><span class="hidden-phone"> ${sessionScope.userName}</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/brand/passwordedit">修改密码</a></li>
                    <li class="divider"></li>
                    <li><a href="/brand/logout">退出</a></li>
                </ul>
            </div>

        </div>
    </div>
</div>
<!-- topbar ends -->
