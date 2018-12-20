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
<title>员工修改页面</title>
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
	</div>
	<div class="container">
		<div class="cen">
			<form action="<%=request.getContextPath()%>/staff/put.action" method="post" enctype="multipart/form-data">
			  <div class="form-group">
			    <label for="USerid">员工号:</label>
			    <input type="text" class="form-control" id="USerid" name="id" value="${staff.id }">
			  </div>
			  <div class="form-group">
			    <label for="name">姓名:</label>
			    <input type="text" class="form-control" id="name" name="name" value="${staff.name }" >
			  </div>
			  <div class="form-group">
			    <label for="age">年龄:</label>
			    <input type="text" class="form-control" id="age" name="age"  value="${staff.age }" >
			  </div>
			  <div class="form-group">
			    <label for="idcar">身份证号:</label>
			    <input type="text" class="form-control" id="idcar" name="idcard" value="${staff.idcard }">
			  </div>
			  <div class="form-group">
			    <label for="path">现居住地:</label>
			    <input type="text" class="form-control" id="path" name="path" value="${staff.path }">
			  </div>
			  <div class="form-group">
			    <label for="department">岗位:</label>
			    <input type="text" class="form-control" id="department" name="department" value="${staff.department }">
			  </div>
			  <div class="form-group">
			    <img src="${staff.imgpath }" width="50" height="80"class="img-rounded">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputFile">请上传照片:</label>
			    <input type="file" id="exampleInputFile" name="file">
			  </div>
			  <button type="submit" class="btn btn-default" style="margin-top:10px;">修改并保存</button>
			</form>
		</div>
	</div>
</body>
</html>