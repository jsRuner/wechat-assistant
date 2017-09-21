<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<jsp:include page="../common/config.jsp"></jsp:include>
<%--
  Created by IntelliJ IDEA.
  User: ft521
  Date: 2017/9/20
  Time: 上午10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <base href="${siteUrl}">
    <title>免费高质量HTML5 Bootstrap响应式后台管理系统模板 - JS代码网</title>
    <meta name="keywords" content="HTML5模版,Bootstrap模版,Bootstrap后台模版,Bootstrap网站后台,Bootstrap3模版,Bootstrap后台管理系统模版,Bootstrap主题" />
    <meta name="description" content="JS代码网提供HTML5模版,Bootstrap模版,Bootstrap后台模版下载">
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
            <a class="brand" href="index.html"> <img alt="Charisma Logo" src="img/logo20.png" /> <span>admin</span></a>

            <!-- theme selector starts -->
            <div class="btn-group pull-right theme-container" >
                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="icon-tint"></i><span class="hidden-phone"> Change Theme / Skin</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu" id="themes">
                    <li><a data-value="classic" href="#"><i class="icon-blank"></i> Classic</a></li>
                    <li><a data-value="cerulean" href="#"><i class="icon-blank"></i> Cerulean</a></li>
                    <li><a data-value="cyborg" href="#"><i class="icon-blank"></i> Cyborg</a></li>
                    <li><a data-value="redy" href="#"><i class="icon-blank"></i> Redy</a></li>
                    <li><a data-value="journal" href="#"><i class="icon-blank"></i> Journal</a></li>
                    <li><a data-value="simplex" href="#"><i class="icon-blank"></i> Simplex</a></li>
                    <li><a data-value="slate" href="#"><i class="icon-blank"></i> Slate</a></li>
                    <li><a data-value="spacelab" href="#"><i class="icon-blank"></i> Spacelab</a></li>
                    <li><a data-value="united" href="#"><i class="icon-blank"></i> United</a></li>
                </ul>
            </div>
            <!-- theme selector ends -->

            <!-- user dropdown starts -->
            <div class="btn-group pull-right" >
                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="icon-user"></i><span class="hidden-phone"> admin</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">Profile</a></li>
                    <li class="divider"></li>
                    <li><a href="login.html">Logout</a></li>
                </ul>
            </div>
            <!-- user dropdown ends -->

            <div class="top-nav nav-collapse">
                <ul class="nav">
                    <li><a href="#">Visit Site</a></li>
                    <li>
                        <form class="navbar-search pull-left">
                            <input placeholder="Search" class="search-query span2" name="query" type="text">
                        </form>
                    </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>
<!-- topbar ends -->
<div class="container-fluid">
    <div class="row-fluid">

        <!-- left menu starts -->
        <div class="span2 main-menu-span">
            <div class="well nav-collapse sidebar-nav">
                <ul class="nav nav-tabs nav-stacked main-menu">
                    <li class="nav-header hidden-tablet">Main</li>
                    <li><a class="ajax-link" href="index.html"><i class="icon-home"></i><span class="hidden-tablet"> Dashboard</span></a></li>
                    <li><a class="ajax-link" href="ui.html"><i class="icon-eye-open"></i><span class="hidden-tablet"> UI Features</span></a></li>
                    <li><a class="ajax-link" href="form.html"><i class="icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>
                    <li><a class="ajax-link" href="chart.html"><i class="icon-list-alt"></i><span class="hidden-tablet"> Charts</span></a></li>
                    <li><a class="ajax-link" href="typography.html"><i class="icon-font"></i><span class="hidden-tablet"> Typography</span></a></li>
                    <li><a class="ajax-link" href="gallery.html"><i class="icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>
                    <li class="nav-header hidden-tablet">Sample Section</li>
                    <li><a class="ajax-link" href="table.html"><i class="icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>
                    <li><a class="ajax-link" href="calendar.html"><i class="icon-calendar"></i><span class="hidden-tablet"> Calendar</span></a></li>
                    <li><a class="ajax-link" href="grid.html"><i class="icon-th"></i><span class="hidden-tablet"> Grid</span></a></li>
                    <li><a class="ajax-link" href="file-manager.html"><i class="icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>
                    <li><a href="tour.html"><i class="icon-globe"></i><span class="hidden-tablet"> Tour</span></a></li>
                    <li><a class="ajax-link" href="icon.html"><i class="icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
                    <li><a href="error.html"><i class="icon-ban-circle"></i><span class="hidden-tablet"> Error Page</span></a></li>
                    <li><a href="login.html"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
                </ul>
                <label id="for-is-ajax" class="hidden-tablet" for="is-ajax"><input id="is-ajax" type="checkbox"> Ajax on menu</label>
            </div><!--/.well -->
        </div><!--/span-->
        <!-- left menu ends -->

        <noscript>
            <div class="alert alert-block span10">
                <h4 class="alert-heading">Warning!</h4>
                <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
            </div>
        </noscript>

        <div id="content" class="span10">
            <!-- content starts -->


            <div>
                <ul class="breadcrumb">
                    <li>
                        <a href="#">Home</a> <span class="divider">/</span>
                    </li>
                    <li>
                        <a href="#">Tables</a>
                    </li>
                </ul>
            </div>

            <a class="btn btn-info" href="/admin/brand/brandadd">添加用户</a>

            <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header well" data-original-title>
                        <h2><i class="icon-user"></i> Members</h2>
                        <div class="box-icon">
                            <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                            <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                            <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <div class="row-fluid">
                            <div class="span6">
                                <div id="DataTables_Table_0_length" class="dataTables_length">
                                    <label>
                                        <select id="per_page" size="1" name="DataTables_Table_0_length" aria-controls="DataTables_Table_0">
                                            <option value="10" >10</option>
                                            <option value="25">25</option>
                                            <option value="50" >50</option>
                                            <option value="100" >100</option>
                                        </select>记录每页</label>
                                </div>
                            </div>
                            <div class="span6">
                                <div class="dataTables_filter" id="DataTables_Table_0_filter">
                                    <label>Search:
                                        <input type="text" id="search" aria-controls="DataTables_Table_0" value="">
                                    </label>
                                </div>
                            </div>
                        </div>


                        <table class="table table-striped table-bordered bootstrap-datatable datatable">
                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>添加时间</th>
                                <th>用户名</th>
                                <th>品牌名称</th>
                                <th>品牌logo</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="brand" items="${brands}">

                                <tr>
                                    <td>${brand.id}</td>
                                    <td class="center"><fmt:formatDate value="${brand.dateAdd}" pattern="yyyy-MM-dd HH:mm:ss" ></fmt:formatDate> </td>
                                    <td class="center">${brand.userName}</td>
                                    <td class="center">${brand.brandName}</td>
                                    <td class="center">
                                        ${brand.brandLogo}
                                    </td>
                                    <td class="center">

                                        <a class="btn btn-info" href="${siteUrl}/admin/brand/brandedit?id=${brand.id}">
                                            <i class="icon-edit icon-white"></i>
                                            编辑
                                        </a>
                                        <a class="btn btn-danger" href="${siteUrl}/admin/brand/branddelete?id=${brand.id}">
                                            <i class="icon-trash icon-white"></i>
                                            删除
                                        </a>
                                    </td>
                                </tr>

                            </c:forEach>


                            </tbody>
                        </table>

                        <div class="pagination pagination-centered">
                            <ul>
                                <li><a href="#">Prev</a></li>
                                <li class="active">
                                    <a href="#">1</a>
                                </li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">Next</a></li>
                            </ul>
                        </div>


                    </div>
                </div><!--/span-->

            </div><!--/row-->



            <!-- content ends -->
        </div><!--/#content.span10-->
    </div><!--/fluid-row-->

    <hr>

    <div class="modal hide fade" id="myModal">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h3>Settings</h3>
        </div>
        <div class="modal-body">
            <p>Here settings can be configured...</p>
        </div>
        <div class="modal-footer">
            <a href="#" class="btn" data-dismiss="modal">Close</a>
            <a href="#" class="btn btn-primary">Save changes</a>
        </div>
    </div>

    <footer>
        <p class="pull-left">&copy; <a href="http://usman.it" target="_blank">Muhammad Usman</a> 2012</p>
        <p class="pull-right">Powered by: <a href="http://usman.it/free-responsive-admin-template">Charisma</a></p>
    </footer>

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


