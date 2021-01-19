
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: xuruifeng
  Date: 2021/1/12
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>操作页面</title>
</head>
<body>
<div align="center">
    <table width="500" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>您的卡号是:</td>
            <td>${account.account_number}</td>
        </tr>


<c:if test="${account.account_status==0}">
            <tr>
                <td>您的卡号状态是:</td>
                <td><b>不可用</b></td>
            </tr>
            <tr>
                <td>您的账户余额为:</td>
                <td>￥${account.account_money}</td>
            </tr>
            <tr align="center">
                <td colspan="2"><input type="button" onclick="back()" value="返回"/></td>
            </tr>
        </c:if>
<c:if test="${account.account_status==1}">
            <tr>
                <td>您的卡号状态是:</td>
                <td><b>可用</b></td>
            </tr>
            <tr>
                <td>您的账户余额为:</td>
                <td>￥${account.account_money}</td>
            </tr>
            <tr>
                <td colspan="2">
                    <form action="../account/deposit" method="post">
                        <input type="hidden" name="account_number" value="${account.account_number}"/>
                        请选择取款金额:<input name="account_money" class="account_money" onblur="deposit(this,${account.account_money})"/><br/>
                        <input type="submit" value="确认"/>
                    </form>
                </td>
            </tr>
</c:if>


    </table>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    function back(){
        location.href="../account/logout";
    }
    function deposit(dom,money) {
        var num=$(dom).val();
        //alert(money);
        if(num>money){
            let newNode=$("<p>取款金额不能大于账户金额</p>");
            $("div").prepend(newNode);
        }
    }
</script>
</body>
</html>
