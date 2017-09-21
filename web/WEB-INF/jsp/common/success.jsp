<%--
  Created by IntelliJ IDEA.
  User: ft521
  Date: 2017/9/21
  Time: 下午12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="config.jsp"></jsp:include>
<html>
<head>
    <title>Title</title>
    <base href="${siteUrl}">
</head>
<body>

<h1>操作成功</h1>
<p>
<strong id="sp">3</strong> 后自动跳转
</p>

<a href="${toUrl}">立即跳转</a>

<script type="text/javascript">
    onload=function(){
        setInterval(go, 1000);
    };
    var x=3; //利用了全局变量来执行
    function go(){
        x--;
        if(x>0){
            document.getElementById("sp").innerHTML=x; //每次设置的x的值都不一样了。
        }else{
            location.href='${toUrl}';
        }
    }
</script>

</body>
</html>
