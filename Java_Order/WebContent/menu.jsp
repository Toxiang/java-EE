<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>小明餐厅</title>
</head>
<body>
<h1>欢迎来到小明餐厅</h1>
<a href="${pageContext.request.contextPath }/select.jsp">查询菜品</a>
<a href="${pageContext.request.contextPath }/add.jsp">增加菜品</a>
<a href="${pageContext.request.contextPath }/show.jsp">查看所有菜品</a>
<a href="${pageContext.request.contextPath }/order.jsp">点单</a>
</body>
</html>