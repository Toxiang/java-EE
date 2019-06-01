<%@page import="util.HibernateSessionFactory"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="dao.ResDao" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>点单界面</title>
  <style>
    *{margin:0; padding:0; list-style:none;}
    body{
        font-family: "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei", "\9ED1\4F53", Arial, sans-serif;
    }
    h3{
        text-align: center;
        color:darkcyan;
        margin-top: 30px;
        letter-spacing: 5px;
    }
    .box{
      width: 1000px;
      margin:50px auto 0px;
    }
    #title{
      line-height: 40px;
      background-color: rgb(247,247,247);
      font-size: 16px;
      font-weight: bold;
      color: rgb(102,102,102);
    }
    #title span{
      float: left;
      width: 166px;
      text-align: center;
    }
    #title span:hover{
      /*color: black;*/
      cursor: pointer;
    }
    #content{
      margin-top: 20px;
    }
    #content li{
      width: 1050px;
      display: none;
      background-color: rgb(247,247,247);
    }
    #content li div{
      width: 156px;
      margin-right: 14px;
      float: left;
      text-align: center;
    }
    #content li div a{
      font-size: 14px;
      color: black;
      line-height: 14px;
    /*  float: left;*/
      display: inline-block;
      margin-top: 10px;
    }
    #content li a:hover{
      color: #B70606;
    }
    #content li div span{
        font-size: 16px;
        line-height: 16px;
        /*float: left;*/
        display: block;
        color: rgb(102,102,102);
        margin-top: 10px;
      }
    #content img{
      float: left;
      width: 155px;
      height: 250px;
    }
    #title .select{
      background-color: #2459a2;
      color: white;
        border-radius: 10%;
    }
    #content .show{
      display: block;
    }

    .show span{
        color: red!important;
        font-size: 30px;
    }
  </style>
</head>

<body>
    <h3 id="wel">小明餐厅欢迎您</h3>


<marquee behavior="scroll" direction="right" color="blue">欢迎进入点餐页面</marquee>
    <script>

    function test(){

        var mywel = document.getElementById("wel");
        var content = mywel.innerText;

        var f_content = content.charAt(0);
        var l_content = content.substring(1,content.length);

        var new_content = l_content + f_content;
        mywel.innerText = new_content;

    }

    setInterval("test();", 500);
</script>
    <div class="box">
      <p id="title">
        <span class="select">店家推荐</span>
        <span>精选</span>
        <span>小炒</span>
        <span>素菜</span>
        <span>主食</span>
        <span>饮料</span>
      </p>

      <ul id="content">
        <li class="show">
		  <%
				ResDao resdao1 = new ResDao();
					List list1 = resdao1.showAllRes();
					for (int i=0; i<list1.size(); i++){
						Object[] obj = (Object[])list1.get(i);
						
				%>
						<div><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559186618876&di=3de49ca424d3a420567854026410ae52&imgtype=0&src=http%3A%2F%2Fpic15.nipic.com%2F20110706%2F4340788_102850355110_2.jpg" alt=obj[1]><a href="order.do?resid=<%=obj[0]%>"><%out.print(obj[1]); %></a><span>价格:<%out.print(obj[2]); %></span></div>
					<%
					}
				 %>
		</li>
        <li>
		  <%
				ResDao resdao2 = new ResDao();
					List list2 = resdao2.showAllRes();
					for (int i=0; i<list2.size(); i++){
						Object[] obj = (Object[])list2.get(i);
						
				%>
						<div><img src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=364055337,609376702&fm=26&gp=0.jpg" alt=obj[1]><a href="order.do?resid=<%=obj[0]%>"><%out.print(obj[1]); %></a><span>价格:<%out.print(obj[2]); %></span></div>
					<%
					}
				 %>
		</li>
        <li>
		  <%
				ResDao resdao3 = new ResDao();
					List list3 = resdao3.showAllRes();
					for (int i=0; i<list3.size(); i++){
						Object[] obj = (Object[])list3.get(i);
						
				%>
						<div><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559186718224&di=8ba46d30eedb7dfd85a40e17dda42d69&imgtype=0&src=http%3A%2F%2Fpic15.nipic.com%2F20110709%2F4317361_025223342000_2.jpg" alt=obj[1]><a href="order.do?resid=<%=obj[0]%>"><%out.print(obj[1]); %></a><span>价格:<%out.print(obj[2]); %></span></div>
					<%
					}
				 %>
		</li>
        <li>
		  <%
				ResDao resdao4 = new ResDao();
					List list4 = resdao4.showAllRes();
					for (int i=0; i<list4.size(); i++){
						Object[] obj = (Object[])list4.get(i);
						
				%>
						<div><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559186734427&di=a0343a116a78a2a3bb90b1179c616b80&imgtype=0&src=http%3A%2F%2Fwww.cnr.cn%2F2011zthd%2Fjingmaoluntan%2Fningxia%2Fmeishi%2F201109%2FW020110910497138710066.jpg" alt=obj[1]><a href="order.do?resid=<%=obj[0]%>"><%out.print(obj[1]); %></a><span>价格:<%out.print(obj[2]); %></span></div>
					<%
					}
				 %>
		</li>
        <li>
		  <%
				ResDao resdao5 = new ResDao();
					List list5 = resdao5.showAllRes();
					for (int i=0; i<list5.size(); i++){
						Object[] obj = (Object[])list5.get(i);
						
				%>
						<div><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559781550&di=d8ce98ed9c8252d406a9e5b3cc6bd75e&imgtype=jpg&er=1&src=http%3A%2F%2Fpic24.nipic.com%2F20121006%2F10688781_163501514000_2.jpg" alt=obj[1]><a href="order.do?resid=<%=obj[0]%>"><%out.print(obj[1]); %></a><span>价格:<%out.print(obj[2]); %></span></div>
					<%
					}
				 %>
		</li>
        <li>
		  <%
				ResDao resdao6 = new ResDao();
					List list6 = resdao6.showAllRes();
					for (int i=0; i<list6.size(); i++){
						Object[] obj = (Object[])list6.get(i);
						
				%>
						<div><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559186749265&di=d8070b929dd4b08a18c487bdb441fb17&imgtype=0&src=http%3A%2F%2Fimg3.redocn.com%2Ftupian%2F20150112%2Fdoujiaoshaoqiezi_3531232.jpg" alt=obj[1]><a href="order.do?resid=<%=obj[0]%>"><%out.print(obj[1]); %></a><span>价格:<%out.print(obj[2]); %></span></div>
					<%
					}
				 %>
		</li>


      </ul>
    </div>

    <script>
      var title=document.getElementById('title');
      var content=document.getElementById('content');
      var category=title.getElementsByTagName('span');
      var item=content.getElementsByTagName('li');

      for (var i = 0; i < category.length; i++) {

          category[i].index=i;

          category[i].onclick=function(){

            for (var j = 0; j < category.length; j++) {
              category[j].className='';
              item[j].className='';
            }
            this.className='select';
            item[this.index].className='show';
          }


      }

    </script>


	
	 <a href="${pageContext.request.contextPath }/cash.jsp">查看订单</a>
	 
</body>
</html>