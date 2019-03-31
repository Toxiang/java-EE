<!--  添加jsp指令-->
<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
        <title>单位职员管理</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/common.css"/>
		<script language="JavaScript"> 
		   if (window != top) {
			   top.location.href = location.href;
		   }
		</script>
    </head>
    <body>
				<div class="page-content">
                <div class="content-nav">
                    登录
                </div>
                <form action="${pageContext.request.contextPath }/customer/list3.action" method="post">
                    <fieldset>
                        <legend>登录信息</legend>     
                         <table class="formtable" style="width:50%">                 
                         <tr>
                                <td>提示信息:</td>
                                <td>
                                  <font color='red'> ${loginError }</font>
                                </td>
                         </tr>
                        
                       
                            <tr>
                                <td>账号名:</td>
                                <td>
                                    <input id="userName" name="userName" type="text" />
                                </td>
                            </tr>
                            <tr>
                                <td>密码:</td>
                                <td>
                                    <input id="password" name="password" type="password" />
                                </td>
                            </tr>
                             <tr>
                                <td>
                              
                                </td>
                             
                            </tr>
                            <tr>
                                <td colspan="2" class="command">
                                    <input type="submit" value="登录" class="clickbutton" />
                                  
                                    <input type="button" value="注册" class="clickbutton" onclick="window.location.href='list4.action'"/>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </form>
            </div>
 
    </body>
</html>