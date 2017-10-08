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

<jsp:include page="../common/adminHeader.jsp"></jsp:include>

<div class="container-fluid">
    <div class="row-fluid">

        <jsp:include page="../common/menu.jsp"></jsp:include>

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
                        <a href="#">添加品牌</a>
                    </li>
                </ul>
            </div>



            <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header well" data-original-title>
                        <h2><i class="icon-edit"></i>修改密码</h2>

                    </div>
                    <div class="box-content">
                        <form class="form-horizontal" method="post" action="${siteUrl}/admin/passwordedit" >
                            <fieldset>
                                <div class="control-group">
                                    <label class="control-label" for="password">原密码</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" id="password" name="password"  type="text" placeholder="输入原密码">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="newPassword">新密码</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" id="newPassword" name="newPassword" type="text" placeholder="设置新的密码">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="confirmNewPassword">确认新密码</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" id="confirmNewPassword" name="confirmNewPassword" type="text" placeholder="再输入一次新密码">
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


    <jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>

