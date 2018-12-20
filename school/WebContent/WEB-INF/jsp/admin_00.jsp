<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>管理人员管理页面</title>
<style>
	.row{
		margin-bottom:20px;
	}
</style>
</head>
<body>
	<div class="container-fluid" style="border:1px solid pink;">
			<div class="row">
		<div class="col-md-12 text-center">
			<h1>欢迎您<c:out value="${sess.username }"></c:out></h1>
		</div>
		<div class="col-md-4 col-md-offset-4">
			<form action="<%=request.getContextPath() %>/show/quit.action">
				<button class="btn btn-warning btn-block tn-lg">退出登陆</button>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<form action="<%=request.getContextPath()%>/admin/insert1.action">
				<button class="btn btn-success btn-lg btn-block">添加</button>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<form action="<%=request.getContextPath()%>/admin/fanhui.action">
			<button class="btn btn-primary btn-lg btn-block">返回</button>
			</form>
		</div>
	</div>
	<table class="table table-striped table-bordered text-center">
		<tr>
			<td>Username</td>
			<td>Password</td>
			<td>人员管理</td>
		</tr>
		<c:forEach items="${list }" var="user">
			<tr>
				<td><c:out value="${user.username }"></c:out></td>
				<td><c:out value="${user.password }"></c:out></td>
				<td>
					<ul class="list-unstyled list-inline">
						<li>
							<form action="<%=request.getContextPath()%>/admin/update1.action">
								<button name="update" value="${user.id }" class="btn btn-warning">修改</button>
							</form>
						</li>
						<li>
							<form action="<%=request.getContextPath()%>/admin/delete1.action">
								<button name="delete" value="${user.id }" class="btn btn-danger">删除</button>
							</form>
					</li>
					</ul>
				</td>
			</tr>
		</c:forEach>
	</table>
		
	</div>
</body>
</html>