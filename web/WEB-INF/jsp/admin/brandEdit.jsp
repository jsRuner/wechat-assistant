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
                        <h2><i class="icon-edit"></i>编辑品牌</h2>

                    </div>
                    <div class="box-content">
                        <form class="form-horizontal" method="post" action="${siteUrl}/admin/brand/brandedit?id=${brand.id}" enctype="multipart/form-data">
                            <fieldset>
                                <div class="control-group">
                                    <label class="control-label" for="userName">用户名</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" id="userName" name="userName" value="${brand.userName}"  type="text" placeholder="设置品牌的用户名">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="password">密码</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" id="password" name="password" value="${brand.password}" type="text" placeholder="设置品牌的密码">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="brandName">品牌名称</label>
                                    <div class="controls">
                                        <input class="input-xlarge focused" id="brandName" name="brandName" value="${brand.brandName}" type="text" placeholder="设置品牌的名称">
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="brandLogo">品牌logo</label>

                                    <div class="controls">
                                        <input class="input-xlarge focused" id="brandLogo" name="brandLogo"  type="file">
                                        <c:if test="${!empty brand.brandLogo}">
                                            <img style="display: block;width: 200px;" src="/uploads/${brand.brandLogo}" alt="">
                                        </c:if>
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

