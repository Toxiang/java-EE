<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="po.Res" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>
  <head>
    <title>查询菜品</title>
  </head>
  <body>
    <html:form action="/search">
    	请您输入您要查询的菜品 : <html:text property="resname"/><br/>
    	<html:submit value="查询"/>
    	<HR>
    </html:form>
  </body>
</html:html>
