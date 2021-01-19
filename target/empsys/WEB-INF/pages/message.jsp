<%--
  Created by IntelliJ IDEA.
  User: xuruifeng
  Date: 2021/1/12
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息提示页面</title>
</head>
<body>
<div align="center">
    操作已完成，您的账户余额是￥${account.account_money}<br/>
    请选择操作类型：
    <input type="button" value="继续操作" onclick="iscontinue()"/>
    <input type="button" value="退出" onclick="logout()"/>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    function iscontinue() {
        //history.back();
        location.href="../account/toMain";
    }

    function logout() {
        location.href="../account/logout";
    }
</script>
</body>
</html>
