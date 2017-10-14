<%--
  Created by IntelliJ IDEA.
  User: ft521
  Date: 2017/9/20
  Time: 上午10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>登录页面 免费高质量HTML5 Bootstrap响应式后台管理系统模板 - JS代码网</title>
    <meta name="keywords" content="HTML5模版,Bootstrap模版,Bootstrap后台模版,Bootstrap网站后台,Bootstrap3模版,Bootstrap后台管理系统模版,Bootstrap主题" />
    <meta name="description" content="JS代码网提供HTML5模版,Bootstrap模版,Bootstrap后台模版下载">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<div class="container-fluid">
    <div class="row-fluid">

        <div class="row-fluid">
            <div class="span12 center login-header">
                <h2>欢迎使用后台管理系统</h2>
            </div><!--/span-->
        </div><!--/row-->

        <div class="row-fluid">
            <div class="well span5 center login-box">
                <div class="alert alert-info">
                    请输入你的用户名和密码
                </div>
                <form class="form-horizontal" action="/admin/login" method="post">
                    <fieldset>
                        <div class="input-prepend" title="Username" data-rel="tooltip">
                            <span class="add-on"><i class="icon-user"></i></span><input autofocus class="input-large span10" name="userName" id="username" type="text" value="admin" />
                        </div>
                        <div class="clearfix"></div>

                        <div class="input-prepend" title="Password" data-rel="tooltip">
                            <span class="add-on"><i class="icon-lock"></i></span><input class="input-large span10" name="password" id="password" type="password" value="admin123456" />
                        </div>
                        <div class="clearfix"></div>

                        <div class="input-prepend">
                            <label class="remember" for="remember"><input type="checkbox" id="remember" />记住密码</label>
                        </div>
                        <div class="clearfix"></div>

                        <p class="center span5">
                            <button type="submit" class="btn btn-primary">登录</button>
                        </p>
                    </fieldset>
                </form>
            </div><!--/span-->
        </div><!--/row-->
    </div><!--/fluid-row-->

</div><!--/.fluid-container-->

<!-- external javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<!-- jQuery -->
<script src="/static/js/jquery-1.7.2.min.js"></script>
<!-- jQuery UI -->
<script src="/static/js/jquery-ui-1.8.21.custom.min.js"></script>
<!-- transition / effect library -->
<script src="/static/js/bootstrap-transition.js"></script>
<!-- alert enhancer library -->
<script src="/static/js/bootstrap-alert.js"></script>
<!-- modal / dialog library -->
<script src="/static/js/bootstrap-modal.js"></script>
<!-- custom dropdown library -->
<script src="/static/js/bootstrap-dropdown.js"></script>
<!-- scrolspy library -->
<script src="/static/js/bootstrap-scrollspy.js"></script>
<!-- library for creating tabs -->
<script src="/static/js/bootstrap-tab.js"></script>
<!-- library for advanced tooltip -->
<script src="/static/js/bootstrap-tooltip.js"></script>
<!-- popover effect library -->
<script src="/static/js/bootstrap-popover.js"></script>
<!-- button enhancer library -->
<script src="/static/js/bootstrap-button.js"></script>
<!-- accordion library (optional, not used in demo) -->
<script src="/static/js/bootstrap-collapse.js"></script>
<!-- carousel slideshow library (optional, not used in demo) -->
<script src="/static/js/bootstrap-carousel.js"></script>
<!-- autocomplete library -->
<script src="/static/js/bootstrap-typeahead.js"></script>
<!-- tour library -->
<script src="/static/js/bootstrap-tour.js"></script>
<!-- library for cookie management -->
<script src="/static/js/jquery.cookie.js"></script>
<!-- calander plugin -->
<script src='/static/js/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='/static/js/jquery.dataTables.min.js'></script>

<!-- chart libraries start -->
<script src="/static/js/excanvas.js"></script>
<script src="/static/js/jquery.flot.min.js"></script>
<script src="/static/js/jquery.flot.pie.min.js"></script>
<script src="/static/js/jquery.flot.stack.js"></script>
<script src="/static/js/jquery.flot.resize.min.js"></script>
<!-- chart libraries end -->

<!-- select or dropdown enhancer -->
<script src="/static/js/jquery.chosen.min.js"></script>
<!-- checkbox, radio, and file input styler -->
<script src="/static/js/jquery.uniform.min.js"></script>
<!-- plugin for gallery image view -->
<script src="/static/js/jquery.colorbox.min.js"></script>
<!-- rich text editor library -->
<script src="/static/js/jquery.cleditor.min.js"></script>
<!-- notification plugin -->
<script src="/static/js/jquery.noty.js"></script>
<!-- file manager library -->
<script src="/static/js/jquery.elfinder.min.js"></script>
<!-- star rating plugin -->
<script src="/static/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="/static/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="/static/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="/static/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="/static/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="/static/js/charisma.js"></script>


</body>
</html>

