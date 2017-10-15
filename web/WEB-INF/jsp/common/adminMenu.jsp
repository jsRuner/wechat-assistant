<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- left menu starts -->
<div class="span2 main-menu-span">
    <div class="well nav-collapse sidebar-nav">
        <ul class="nav nav-tabs nav-stacked main-menu">
            <li class="nav-header hidden-tablet">Main</li>
            <li><a class="ajax-link" href="/admin/index"><i class="icon-home"></i><span class="hidden-tablet"> 首页</span></a></li>
            <li><a class="ajax-link" href="/admin/brand/brandlist"><i class="icon-eye-open"></i><span class="hidden-tablet"> 品牌列表</span></a></li>
            <li><a class="ajax-link" href="/admin/brand/brandadd"><i class="icon-edit"></i><span class="hidden-tablet"> 添加品牌</span></a></li>
            <li class="nav-header hidden-tablet">安全</li>
            <li><a href="/admin/passwordedit"><i class="icon-lock"></i><span class="hidden-tablet"> 修改密码</span></a></li>
        </ul>
        <label id="for-is-ajax" class="hidden-tablet"><a href="/admin/logout">退出</a></label>
    </div><!--/.well -->
</div><!--/span-->
<!-- left menu ends -->