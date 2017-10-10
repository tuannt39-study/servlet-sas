<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet Demo</title>
</head>
<body>
	
	<!-- Được biên dịch ở translation time, deloy rồi thì khó thay đổi -->
	<%@ include file="/common/header.jsp" %> <br />

	The image name is: <%= request.getAttribute("imageName") %> <br />
	<img alt="This is a show" src="images/avatar.jpg">
</body>
</html>