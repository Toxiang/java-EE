<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="po.Res" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>
  <head>
    <title></title>
  </head>
  <body>
    	<%
    		List list = (List)request.getAttribute("ress");
    		for(int i=0; i<list.size(); i++){
    			Object[] obj = (Object[])list.get(i);
    			out.println(obj[0]+"  "+obj[1]+"  "+obj[2]+"<br />");
    		}
    	 %>
  </body>
</html:html>
