<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" di'v="anonymous"></script>
<title>人事管理登陆界面</title>
<style>
			.cen{
				
				width: 400px;
				margin-left: 50%;
				transform: translateX(-50%);
			}
		</style>
</head>
<body>
<div class="container">
			<div class="cen">
				<form action="show/index.action" method="post" class="form-horizontal">
					<div class="form-group">
	   					<h2 class="text-center">人事管理系统</h2>
	   				</div>
					 <div class="form-group">
					    <label for="user">UserName</label>
					    <input  type="text" name="user" class="form-control" id="user" placeholder="UserName">
					  </div>
					  <div class="form-group">
					    <label for="pass">Password</label>
					    <input type="password" name="pass" class="form-control" id="pass" placeholder="Password">
					  </div>
					  <button type="submit" class="btn btn-success btn-block">login</button>
				</form>
			</div>
		</div>
</body>
</html>