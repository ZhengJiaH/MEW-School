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
<title>功能页面</title>
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
				<button class="btn btn-warning btn-block btn-lg">退出登陆</button>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<form action="<%=request.getContextPath() %>/show/admin.action">
				<button class="btn btn-success btn-lg btn-block">管理员管理</button>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<form action="<%=request.getContextPath() %>/staff/list.action">
			<button class="btn btn-primary btn-lg btn-block">人事管理</button>
			</form>
		</div>
	</div>
</div>
</body>
</html>