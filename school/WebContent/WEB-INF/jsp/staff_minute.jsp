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
<title>员工详情页面</title>
<style>
		.cen{
		width: 500px;
		margin-left:50%;
		transform: translateX(-50%);
		margin-bottom:20px;
	}
</style>
</head>
<body>
	<div class="page-header">
 		 <h1>欢迎您 <small><c:out value="${sess.username }"></c:out></small></h1>
 		 
	</div>
	<div class="cen">
			<form action="<%=request.getContextPath() %>/show/quit.action">
				<button class="btn btn-warning btn-block btn-lg" style="margin-bottom:20px;">退出登陆</button>
			</form>
			<form action="<%=request.getContextPath()%>/staff/fanhuiList.action">
				<button class="btn btn-success btn-block btn-lg" >返回上一步</button>
			</form>
	</div>
	<div class="container">
		<div class="cen text-center" style="width: 900px;">
			<table class="table table-striped table-bordered">
				<tr>
					<td>图片</td>
					<td>姓名</td>
					<td>性别</td>
					<td>年龄</td>
					<td>员工号</td>
					<td>身份证号</td>
					<td>住址</td>
					<td>工作岗位</td>
					<td>操作</td>
				</tr>
				<tr>
					<td><img src="${staff.imgpath }" width="50" height="50"class="img-rounded"></td>
					<td><c:out value="${staff.name }"></c:out></td>
					<td><c:out value="${staff.sex }"></c:out></td>
					<td><c:out value="${staff.age }"></c:out></td>
					<td><c:out value="${staff.id }"></c:out></td>
					<td><c:out value="${staff.idcard }"></c:out></td>
					<td><c:out value="${staff.path }"></c:out></td>
					<td><c:out value="${staff.department }"></c:out></td>
					<td>
						<form action="<%=request.getContextPath()%>/staff/modify.action">
							<button name="modify" value="${staff.id }" class="btn btn-danger btn-xs">修改</button>
						</form>
					</td>
				</tr>
			</table>
		</div>
	</div>
	
</body>
</html>