<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="po.Res" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>
  <head>
    <title>增加菜品</title>
  </head>
  <body>
    <html:form action="/add">
    <table>
    <tr>
    	<td>菜序号 :</td>   
    	<td><html:text property="resid"/></td>
    </tr>
    <tr>
    	<td>菜名:</td>   
    	<td><html:text property="resname"/></td>
  	</tr>
  	<tr>
    	<td>菜价 :</td>  
    	<td><html:text property="resprice"></html:text></td>
    </tr>
    	<tr>
    	<td><html:submit value="添加"/></td>
    	</tr>
    </table>	
    </html:form>
  </body>
</html:html>