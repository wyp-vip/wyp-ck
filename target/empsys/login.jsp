<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xuruifeng
  Date: 2021/1/12
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<div align="center">
    <c:if test="${mess!=null}">
        <p>${mess}</p>
    </c:if>

    <form method="post" action="account/login">
        <p id="number"></p>
        卡号:<input name="account_number" class="account_number" id="account_number" onblur="checkNumber()"/><br/>
        <p id="password"></p>
        密码:<input type="password" name="account_pwd" id="account_pwd" onblur="checkPassword()"/><br/><br/>
        <input type="submit" value="提交"/>
    </form>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    function checkNumber() {
        var number=$("#account_number").val();
        var reg=/^\d{16}$/;
        if(reg.test(number)==false){
            $("#number").html("卡号必须为数字，长度为16位")
        }else{
            $("#number").html("");
        }
    }
    function checkPassword() {
        var password=$("#account_pwd").val();
        var reg=/^\d{6}$/;
        if(reg.test(password)==false){
            $("#password").html("密码必须为数字，长度为6位")
        }else{
            $("#password").html("");
        }
    }
</script>
</body>
</html>
