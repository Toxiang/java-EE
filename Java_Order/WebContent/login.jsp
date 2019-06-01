<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="po.Customer" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html:html>
<head>
<meta charset="utf-8"><title>登录</title>
 <script type="text/javascript">
 var targetProtocol = "http:";
if (window.location.protocol != targetProtocol){
  window.location.href = targetProtocol+window.location.href.substring(window.location.protocol.length);
}
 </script>
 <script type="text/javascript">
function display_alert()
  {
  alert("I am an alert box!!")
  }
</script>
  
    <script  type="text/javascript">
    function openMoney(obj){
        var epay_or_weixin = "light_epay";
        switch(obj.id)
        {
            case 'pay_weixin':
            epay_or_weixin = "light_weixin";
            break;

            case 'pay_epay':
            epay_or_weixin = "light_epay";
            break;
        }
        document.getElementById(epay_or_weixin).style.display='block';
        document.getElementById('fade').style.display='block';
    }
    function closeWindow(){
        document.getElementById('light_weixin').style.display='none';
        document.getElementById('light_epay').style.display='none';
        document.getElementById('fade').style.display='none';
    }
</script>
<style>
     .black_overlay{
         display: none;
         position: absolute;
         top: 0%;
         left: 0%;
         width: 100%;
         height: 100%;
         background-color: #ffffff;
         z-index:1001;
         -moz-opacity: 0.8;
         opacity:.80;
         filter: alpha(opacity=80);
    }
    .white_content {
        display: none;
        position: absolute;
        top: 10%;
        left: 30%;
        background-color: white;
        z-index:1002; /* 数字的大小指明了div的相对层，数字大的在上层 */
        overflow: auto;
    }
</style>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_830376_qzecyukz0s.css">
    <link rel="shortcut icon" type="image/x-icon" href="./static/img/favicon.ico">
    <link href="./static/css/app.d83e31d529fb72fcc2135c54215ba9ea.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8" async="" src="./static/js/6.e7ad66aefc04e83f4609.js"></script>
    <script type="text/javascript" charset="utf-8" async="" src="./static/js/0.9e52e101d528adfb5e37.js"></script>
    <script type="text/javascript" charset="utf-8" async="" src="./static/js/1.0b6476b7dbc0f42be641.js"></script>
</head>
  <body>
  
    <div id="app">
        <div data-v-3afab98a="" class="login-wrap">
            <div data-v-3afab98a="" class="ms-login">
                <div data-v-3afab98a="" class="ms-title">欢迎进入小明餐厅</div>
               	<html:form action="/login">
               	<div data-v-3afab98a="" class="el-form-item is-required el-form-item--small">
                        <div class="el-form-item__content" style="margin-left: 0px;">
                            <div data-v-3afab98a="" class="el-input el-input--small el-input-group el-input-group--prepend">
                                <div class="el-input-group__prepend"><button data-v-3afab98a="" type="button" class="el-button el-button--default el-button--small"><!---->
                                    <i class="el-icon-lx-people"></i><!----></button>
                                </div>
    								<font size="3px">账号 : </font>
    								<html:text property="account"/><br/>
    							</div>
    					</div>
    			</div>
    			<div data-v-3afab98a="" class="el-form-item is-required el-form-item--small">
                     <div class="el-form-item__content" style="margin-left: 0px;">
                           <div data-v-3afab98a="" class="el-input el-input--small el-input-group el-input-group--prepend">
                                <div class="el-input-group__prepend"><button data-v-3afab98a="" type="button" class="el-button el-button--default el-button--small">
                                	<i class="el-icon-lx-lock"></i></button>
                                </div>
                               		<font size="3px">密码 : </font>
                               		<html:text property="password"></html:text>
    					</div>
    				</div>
    			</div>
    			<div data-v-3afab98a="" class="login-pwd">
                        <label data-v-3afab98a="">
                            <label data-v-3afab98a="" role="checkbox" aria-checked="false" class="el-checkbox needsclick is-checked">
                                <span aria-checked="mixed" class="el-checkbox__input is-checked"><span class="el-checkbox__inner"></span>
                                    <input type="checkbox" aria-hidden="true" class="el-checkbox__original" value="">
                                </span>
                                <span class="el-checkbox__label" color="black">记住密码<!----></span>
                            </label>
                        </label>
                    </div>
                     <div data-v-3afab98a="" class="login-btn">
                       
                            <html:submit value="登录"/>
                        
                    </div>
    							
    </html:form>
            </div>
        </div>
    </div>
    


  </body>
</html:html>