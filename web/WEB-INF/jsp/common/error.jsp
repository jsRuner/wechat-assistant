<%--
  Created by IntelliJ IDEA.
  User: ft521
  Date: 2017/9/21
  Time: 下午12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>出现错误</title>
</head>
<body>
<h1>出现错误</h1>

<p>
    <c:if test="${ errorMessage != null}">
            ${errorMessage}
    </c:if>
</p>

<p>
    <strong id="sp">3</strong> 后自动跳转
</p>

<a href="#" id="goBack" onclick="history.go(-1);">返回上一步</a>

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
            history.go(-1);
        }
    }
</script>

</body>
</html>
