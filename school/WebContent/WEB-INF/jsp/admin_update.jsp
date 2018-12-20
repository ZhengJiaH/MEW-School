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
<title>管理人员修改页面</title>
<style>
	.cen{
		width: 500px;
		margin-left:50%;
		transform: translateX(-50%);
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
		
	</div>
	<div class="container">
		<div class="cen">
			<form action="<%=request.getContextPath()%>/admin/update1.action"
		method="post"class="">
   			<div class="form-group">
   				<h2 class="text-center">管理员信息修改</h2>
   			</div>
   			<div class="form-group">
   				<label for="userID" class="col-md-2  control-label">员工ID:</label>
   				<div class="">
   					<input type="text" name="id" class="form-control" id="userID" value="${userpass.id }">
   				</div>
   			</div>
   			<div class="form-group">
   				<label for="userName" class="control-label">UserName：</label>
   				<div class="">
   					<input type="text" name="username" class="form-control" id="userName" value="${userpass.username }">
   				</div>
   			</div>
   			<div class="form-group">
   				<label for="PassWord" class="control-label">PassWord：</label>
   				<div class="">
   					<input type="password" name="password" class="form-control" id="PassWord" value="${userpass.password }">
   				</div>
   			</div>
   			<div class="form-group">
   				<div class="">
   					<button type="submit" class="btn btn-primary btn-lg btn-block">保存提交</button>
   				</div>
   			</div>
   		</form>
		</div>
	</div>
</body>
</html>