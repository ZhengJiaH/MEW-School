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
<title>Insert title here</title>
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
				<button class=" btn btn-warning btn-block btn-lg">退出登陆</button>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<form action="<%=request.getContextPath()%>/staff/insertOne.action">
				<button class="btn btn-success btn-lg btn-block">添加</button>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<form  action="<%=request.getContextPath()%>/staff/fanhui.action">
			<button class="btn btn-primary btn-lg btn-block">返回</button>
			</form>
		</div>
	</div>
	<table class="table table-striped table-bordered text-center">
		<tr>
			<td>员工工号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>年龄</td>
			<td>人事管理</td>
		</tr>
		<c:forEach items="${list }" var="staff">
			<tr>
				<td><c:out value="${staff.id }"></c:out></td>
				<td><c:out value="${staff.name }"></c:out></td>
				<td><c:out value="${staff.sex }"></c:out></td>
				<td><c:out value="${staff.age }"></c:out></td>
				
				<td>
					<ul class="list-unstyled list-inline">
						<li>
							<form action="<%=request.getContextPath()%>/staff/minute.action">
								<button name="minute" value="${staff.id }" class="btn btn-warning">查看详情</button>
							</form>
						</li>
						<li>
							<form  action="<%=request.getContextPath()%>/staff/delete_sta.action">
								<button name="delete" value="${staff.id }" class="btn btn-danger">删除</button>
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