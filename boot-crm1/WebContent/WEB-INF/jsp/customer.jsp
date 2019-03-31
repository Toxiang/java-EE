<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itcast" uri="http://itcast.cn/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>职工管理系统</title>

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<%response.setContentType("text/html;charset=utf-8"); %>
<% request.setCharacterEncoding("UTF-8"); %>
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">职工信息管理系统 v1.0</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-messages">
					<li><a href="#">
							<div>
								<strong>wzx</strong> <span class="pull-right text-muted">
									<em>dd</em>
								</span>
							</div>
							<div>aesgehrdt</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>查看全部消息</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-messages --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-tasks">
					<li><a href="#">
							<div>
								<p>
									<strong>任务 1</strong> <span class="pull-right text-muted">完成40%</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-success"
										role="progressbar" aria-valuenow="40" aria-valuemin="0"
										aria-valuemax="100" style="width: 40%">
										<span class="sr-only">完成40%</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<p>
									<strong>任务 2</strong> <span class="pull-right text-muted">完成20%</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-info" role="progressbar"
										aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
										style="width: 20%">
										<span class="sr-only">完成20%</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>查看所有任务</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-tasks --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-alerts">
					<li><a href="#">
							<div>
								<i class="fa fa-comment fa-fw"></i> 新回复 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-envelope fa-fw"></i> 新消息 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-tasks fa-fw"></i> 新任务 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-upload fa-fw"></i> 服务器重启 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>查看所有提醒</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-alerts --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> 用户设置</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
					<li class="divider"></li>
					<li><a href="login2.action"><i class="fa fa-sign-out fa-fw"></i>
							退出登录</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="查询内容...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button>
							</span>
						</div> <!-- /input-group -->
					</li>
					<li><a href="list.action" class="active"><i
							class="fa fa-edit fa-fw"></i> 职工工作信息</a></li>
					<li><a href="exc.action"><i
							class="fa fa-dashboard fa-fw"></i> 职工其他信息</a></li>
					<li><a href="pain.action"><i
							class="fa fa-dashboard fa-fw"></i> 修改职工信息</a></li>
							
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		
		<!-- /.navbar-static-side --> </nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">职工管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline" action="${pageContext.request.contextPath }/customer/list.action" method="get">
						<div class="form-group">
							<label for="customerName">职工姓名</label> 
							<input type="text" class="form-control" id="customerName" value="${vo.custName }" name="custName">
						</div>
						<div class="form-group">
							<label for="customerFrom">职工性别</label> 
							<select	class="form-control" id="customerFrom" placeholder="客户来源" name="custSource">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == vo.custSource}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="custIndustry">部门</label> 
							<select	class="form-control" id="custIndustry"  name="custIndustry">
								<option value="">--请选择--</option>
								<c:forEach items="${industryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == vo.custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="custLevel">职工职能</label>
							<select	class="form-control" id="custLevel" name="custLevel">
								<option value="">--请选择--</option>
								<c:forEach items="${levelType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == vo.custLevel}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<button type="submit" class="btn btn-primary">查询</button>
					</form>
				</div>
			</div>
			
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">职工信息列表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>职工姓名</th>
									<th>职工性别</th>
									<th>所属部门</th>
									<th>职能</th>
									<th>职称</th>
									<th>工龄</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.rows}" var="row">
									<tr>
										<td>${row.cust_id}</td>
										<td>${row.cust_name}</td>
										<td>${row.cust_source}</td>
										<td>${row.cust_industry}</td>
										<td>${row.cust_level}</td>
										<td>${row.cust_part}</td>
										<td>${row.cust_year}</td>
										<td>
											
											<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="seeCustomer(${row.cust_id})">查看</a>
											
											
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="col-md-12 text-right">
							<itcast:page url="${pageContext.request.contextPath }/customer/list.action" />
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
		</div>
		<!-- /#page-wrapper -->
		
		
		
		
		

	</div>
	<!-- 职工编辑对话框 -->
	<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">职工信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_customer_form">
						
						<div class="form-group">
							<label for="edit_cust_id" class="col-sm-2 control-label">职工ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_cust_id" placeholder="职工ID" name="cust_id">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">职工姓名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_customerName" placeholder="职工姓名" name="cust_name">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;">职工性别</label> 
							<div class="col-sm-10">
								<select	class="form-control" id="edit_customerFrom" placeholder="职工性别" name="cust_source">
									<option value="">--请选择--</option>
									<c:forEach items="${fromType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custIndustry" style="float:left;padding:7px 15px 0 27px;">所属部门</label>
							<div class="col-sm-10"> 
								<select	class="form-control" id="edit_custIndustry"  name="cust_industry">
									<option value="">--请选择--</option>
									<c:forEach items="${industryType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">职工职能</label>
							<div class="col-sm-10">
								<select	class="form-control" id="edit_custLevel" name="cust_level">
									<option value="">--请选择--</option>
									<c:forEach items="${levelType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custLevel}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="edit_part" class="col-sm-2 control-label">员工职称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_part" placeholder="员工职称" name="cust_part">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_gra" class="col-sm-2 control-label">员工学历</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_gra" placeholder="员工学历" name="cust_gra">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_year" class="col-sm-2 control-label">员工工龄</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_year" placeholder="员工工龄" name="cust_year">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_home" class="col-sm-2 control-label">家庭关系</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_home" placeholder="家庭关系" name="cust_home">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_ap" class="col-sm-2 control-label">奖惩信息</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_ap" placeholder="奖惩信息" name="cust_ap">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

				</div>
			</div>
		</div>
	</div>
	<!-- /#wrapper -->
	<!-- 职工查看对话框 -->
	<div class="modal fade" id="customerSeeDialog" tabindex="1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">查看职工信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_customer_form">
						<input type="hidden" id="edit_cust_id" name="cust_id"/>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">职工姓名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_customerName" placeholder="职工姓名" name="cust_name">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;">职工性别</label> 
							<div class="col-sm-10">
								<select	class="form-control" id="edit_customerFrom" placeholder="职工性别" name="cust_source">
									<option value="">--请选择--</option>
									<c:forEach items="${fromType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custIndustry" style="float:left;padding:7px 15px 0 27px;">所属部门</label>
							<div class="col-sm-10"> 
								<select	class="form-control" id="edit_custIndustry"  name="cust_industry">
									<option value="">--请选择--</option>
									<c:forEach items="${industryType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">职工职能</label>
							<div class="col-sm-10">
								<select	class="form-control" id="edit_custLevel" name="cust_level">
									<option value="">--请选择--</option>
									<c:forEach items="${levelType}" var="item">
										<option value="${item.dict_id}"<c:if test="${item.dict_id == custLevel}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="edit_part" class="col-sm-2 control-label">员工职称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_part" placeholder="员工职称" name="cust_part">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_gra" class="col-sm-2 control-label">员工学历</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_gra" placeholder="员工学历" name="cust_gra">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_year" class="col-sm-2 control-label">员工工龄</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_year" placeholder="员工工龄" name="cust_year">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_home" class="col-sm-2 control-label">家庭关系</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_home" placeholder="家庭关系" name="cust_home">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_ap" class="col-sm-2 control-label">奖惩信息</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_ap" placeholder="奖惩信息" name="cust_ap">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="addCustomer()">保存</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="<%=basePath%>js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/sb-admin-2.js"></script>
	
	<script type="text/javascript">
		function editCustomer(id) {
			$.ajax({
				type:"get",
				url:"<%=basePath%>customer/edit.action",
				data:{"id":id},
				success:function(data) {
					$("#edit_cust_id").val(data.cust_id);
					$("#edit_customerName").val(data.cust_name);
					$("#edit_customerFrom").val(data.cust_source)
					$("#edit_custIndustry").val(data.cust_industry)
					$("#edit_custLevel").val(data.cust_level)
					$("#edit_ap").val(data.cust_ap);
					$("#edit_part").val(data.cust_part);
					$("#edit_gra").val(data.cust_gra);
					$("#edit_year").val(data.cust_year);
					$("#edit_home").val(data.cust_home);
					
				}
			});
		}
		
		function seeCustomer(id) {
			$.ajax({
				type:"get",
				url:"<%=basePath%>customer/edit.action",
				data:{"id":id},
				success:function(data) {
					$("#edit_cust_id").val(data.cust_id);
					$("#edit_customerName").val(data.cust_name);
					$("#edit_customerFrom").val(data.cust_source)
					$("#edit_custIndustry").val(data.cust_industry)
					$("#edit_custLevel").val(data.cust_level)
					$("#edit_ap").val(data.cust_ap);
					$("#edit_part").val(data.cust_part);
					$("#edit_gra").val(data.cust_gra);
					$("#edit_year").val(data.cust_year);
					$("#edit_home").val(data.cust_home);
					
				}
			});
		}
		
		function updateCustomer() {
			alert($("#edit_customer_form").serialize());
			$.post("<%=basePath%>customer/update.action",$("#edit_customer_form").serialize(),function(data){
				if(data == "0"){
					alert("员工信息更新成功！");
				}else{
					alert("员工信息更新失败！");
				}
				window.location.reload();
			});
		}
		
		function addCustomer() {
			alert($("#edit_customer_form").serialize());
			$.post("<%=basePath%>customer/add.action",$("#edit_customer_form").serialize(),function(data){
				if(data == "0"){
					alert("员工信息添加成功！");
				}else{
					alert("员工信息添加失败！");
				}
				window.location.reload();
			});
		}
		
		function deleteCustomer(id) {
			if(confirm('确实要删除该员工吗?')) {
				$.post("<%=basePath%>customer/delete.action",{"id":id},function(data){
					if(data == "0"){
						alert("员工信息删除成功！");
					}else{
						alert("员工信息删除失败！");
					}
					window.location.reload();
				});
			}
		}
		function deCustomer(id) {
			if(confirm('确实要删除该员工吗?')) {
				$.post("<%=basePath%>customer/delete.action",{"id":id},function(data){
					if(data == "0"){
						alert("员工信息删除成功！");
					}else{
						alert("员工信息删除失败！");
					}
					window.location.reload();
				});
			}
		}
	</script>

</body>

</html>
