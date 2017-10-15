<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- left menu starts -->
<div class="span2 main-menu-span">
    <div class="well nav-collapse sidebar-nav">
        <ul class="nav nav-tabs nav-stacked main-menu">
            <li class="nav-header hidden-tablet">Main</li>
            <li><a class="ajax-link" href="/brand/index"><i class="icon-home"></i><span class="hidden-tablet"> 首页</span></a></li>
            <li><a class="ajax-link" href="/brand/user/userlist"><i class="icon-eye-open"></i><span class="hidden-tablet"> 用户列表</span></a></li>
            <li><a class="ajax-link" href="/brand/user/useradd"><i class="icon-edit"></i><span class="hidden-tablet"> 添加用户</span></a></li>
            <li class="nav-header hidden-tablet">安全</li>
            <li><a href="/brand/passwordedit"><i class="icon-lock"></i><span class="hidden-tablet"> 修改密码</span></a></li>
        </ul>
        <label id="for-is-ajax" class="hidden-tablet"><a href="/brand/logout">退出</a></label>
    </div><!--/.well -->
</div><!--/span-->
<!-- left menu ends -->