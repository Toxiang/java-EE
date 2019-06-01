<%@page import="util.HibernateSessionFactory"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="dao.ResDao" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>菜单</title>
</head>
<body>
		<%
			ResDao resdao = new ResDao();
			List list = resdao.showAllRes();
			
    		for(int i=0; i<list.size(); i++){
    			Object[] obj = (Object[])list.get(i);
    			out.println(obj[0]+"  "+obj[1]+"  "+obj[2]+"<br />");
    		}
    	 %>
</body>
</html>