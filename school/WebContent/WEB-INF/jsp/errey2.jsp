<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>正在退出，1秒钟自动返回</h3>
<%
	response.setHeader("Refresh", "1;URL=/school/index.jsp");
%>
</body>
</html>