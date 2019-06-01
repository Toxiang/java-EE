<%@page import="util.HibernateSessionFactory"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="dao.OrderDao" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete</title>
</head>
<body>
	<%
		OrderDao order = new OrderDao();
		List list = order.showAll_order();
		for (int i=0; i<list.size(); i++){
			Object[] obj = (Object[])list.get(i);
			out.println(obj[0]+"  "+obj[1]+"  "+obj[2]);
		%>
			<a href="delete.do?oid=<%=obj[0]%>">删除</a><br />
		<%
		}
	 %>
	 <br>
	 <a href="menu.jsp">返回主页</a>

</body>
</html>