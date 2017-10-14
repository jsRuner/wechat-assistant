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

<jsp:include page="../common/adminHeader.jsp"></jsp:include>



<div class="container-fluid">
    <div class="row-fluid">

        <jsp:include page="../common/menu.jsp"></jsp:include>

        <noscript>
            <div class="alert alert-block span10">
                <h4 class="alert-heading">警告！</h4>
                <p>你必须启用 <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>.</p>
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
                        <a href="#">控制台</a>
                    </li>
                </ul>
            </div>

            <div class="row-fluid">
                <div class="box span12">
                    <div class="box-header well">
                        <h2><i class="icon-info-sign"></i> 消息</h2>

                    </div>
                    <div class="box-content">
                        <p>欢迎你回来,管理员</p>



                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>






            <!-- content ends -->
        </div><!--/#content.span10-->
    </div><!--/fluid-row-->

    <hr>




<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>

