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

<jsp:include page="../common/header.jsp"></jsp:include>
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
                        <a href="#">Home</a> <span class="divider">/</span>
                    </li>
                    <li>
                        <a href="#">Tables</a>
                    </li>
                </ul>
            </div>

            <a class="btn btn-info" href="/admin/brand/brandadd">添加品牌</a>

            <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header well" data-original-title>
                        <h2><i class="icon-user"></i> 品牌列表</h2>

                    </div>
                    <div class="box-content">
                        <div class="row-fluid">

                            <div class="span6">
                                <div class="dataTables_filter" id="DataTables_Table_0_filter">
                                    <label>Search:
                                        <input type="text" id="search"  aria-controls="DataTables_Table_0" value="${search}">
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

                                <c:choose>
                                    <c:when test="${page.pageNow - 1 > 0}">
                                        <li><a href="/admin/brand/brandlist?search=${search}&pageNow=${page.pageNow - 1}">Prev</a></li>
                                    </c:when>
                                    <c:when test="${page.pageNow - 1 <= 0}">
                                        <li><a href="/admin/brand/brandlist?search=${search}&pageNow=1">Prev</a></li>
                                    </c:when>
                                </c:choose>


                                    <c:if test="${page.pageNow-2 <= page.totalPageCount && page.pageNow -2 >0}">
                                        <li> <a href="/admin/brand/brandlist?search=${search}&pageNow=${page.pageNow -2}">${page.pageNow-2}</a></li>
                                    </c:if>
                                    <c:if test="${page.pageNow-1 <= page.totalPageCount && page.pageNow -1 >0 }">
                                        <li> <a href="/admin/brand/brandlist?search=${search}&pageNow=${page.pageNow -1 }">${page.pageNow-1}</a></li>
                                    </c:if>





                                <li class="active">
                                    <a href="/admin/brand/brandlist?search=${search}&pageNow=${page.pageNow}">${page.pageNow}</a>
                                </li>

                                    <c:if test="${page.pageNow+1 <= page.totalPageCount}">
                                        <li> <a href="/admin/brand/brandlist?search=${search}&pageNow=${page.pageNow + 1}">${page.pageNow+1}</a></li>
                                    </c:if>
                                    <c:if test="${page.pageNow+2 <= page.totalPageCount}">
                                        <li> <a href="/admin/brand/brandlist?search=${search}&pageNow=${page.pageNow + 2}">${page.pageNow+2}</a></li>
                                    </c:if>









                                <c:choose>
                                    <c:when test="${page.totalPageCount==0}">

                                        <li><a href="/admin/brand/brandlist?search=${search}&pageNow=${page.pageNow}">Next</a></li>
                                    </c:when>
                                    <c:when test="${page.pageNow + 1 < page.totalPageCount}">

                                        <li> <a href="/admin/brand/brandlist?search=${search}&pageNow=${page.pageNow + 1}">Next</a></li>
                                    </c:when>
                                    <c:when test="${page.pageNow + 1 >= page.totalPageCount}">

                                        <li><a href="/admin/brand/brandlist?search=${search}&pageNow=${page.totalPageCount}">Next</a></li>
                                    </c:when>
                                </c:choose>


                            </ul>
                        </div>


                    </div>
                </div><!--/span-->

            </div><!--/row-->



            <!-- content ends -->
        </div><!--/#content.span10-->
    </div><!--/fluid-row-->

    <hr>



<jsp:include page="../common/footer.jsp"></jsp:include>

    <script type="text/javascript">


    function changeUrlArg(url, arg, val){
        var pattern = arg+'=([^&]*)';
        var replaceText = arg+'='+val;
        return url.match(pattern) ? url.replace(eval('/('+ arg+'=)([^&]*)/gi'), replaceText) : (url.match('[\?]') ? url+'&'+replaceText : url+'?'+replaceText);
    }
    document.onkeydown=function(event){
        var e = event || window.event || arguments.callee.caller.arguments[0];
        if(e && e.keyCode==13){ // enter 键
            //要做的事情
            var search = $("#search").val();

            console.log(search);
            var cur_url = window.location.href;
            window.location.href = changeUrlArg(cur_url,'search',search);
        }


    }


</script>


</body>
</html>


