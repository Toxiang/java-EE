<!--  添加jsp指令-->
<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--${pageContext.request.contextPath } 获取项目的绝对路劲 http://localhost:8080/SuperMarket2.0/  -->
  <a href="${pageContext.request.contextPath }/customer/login2.action">登录</a>
</body>
</html>