<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ft521
  Date: 2017/9/20
  Time: 上午10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../common/config.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="../common/brandHeader.jsp"></jsp:include>

<div class="container-fluid">
    <div class="row-fluid">

        <jsp:include page="../common/brandMenu.jsp"></jsp:include>

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
                        <a href="#">首页</a> <span class="divider">/</span>
                    </li>
                    <li>
                        <a href="#">编辑用户</a>
                    </li>
                </ul>
            </div>



            <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header well" data-original-title>
                        <h2><i class="icon-edit"></i>编辑用户</h2>

                    </div>
                    <div class="box-content">
                        <form class="form-horizontal" method="post" action="${siteUrl}/brand/user/useredit?id=${user.id}" enctype="multipart/form-data">
                            <fieldset>
                                <div class="control-group">
                                    <label class="control-label" for="userName">用户名</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" id="userName" name="userName" value="${user.userName}"  type="text" placeholder="设置用户名">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="password">密码</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" id="password" name="password" value="${user.password}" type="text" placeholder="设置密码">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="realName">名称</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" id="realName" name="realName" value="${user.realName}" type="text" placeholder="设置名称">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="address">地址</label>

                                    <div class="controls">
                                        <input class="input-xlarge focused" id="address" name="address" value="${user.address}" type="text" placeholder="设置地址">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="mobile">电话</label>

                                    <div class="controls">
                                        <input class="input-xlarge focused" id="mobile" name="mobile" value="${user.mobile}" type="text" placeholder="设置联系电话">
                                    </div>
                                </div>

                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary">提交</button>
                                    <button class="btn" onclick="history.go(-1);">取消</button>
                                </div>
                            </fieldset>
                        </form>

                    </div>
                </div><!--/span-->

            </div><!--/row-->


            <!-- content ends -->
        </div><!--/#content.span10-->
    </div><!--/fluid-row-->

    <hr>



    <jsp:include page="../common/footer.jsp"></jsp:include>


</body>
</html>

