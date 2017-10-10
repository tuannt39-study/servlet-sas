<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet Demo</title>
</head>
<body>

	<a href="show.jsp"> Avatar</a>
	<a href="ImageShow"> Images</a>
	
	<%!
		String name="Jerry index";
	%>
	
	<br /> <!-- Được biên dịch ở runtime, mỗi lần chạy lại biên dịch 1 lần, thời gian sẽ lâu hơn -->
	<jsp:include page="/common/header.jsp" >
		<jsp:param value="<%=name %>" name="avatarName"/>
	</jsp:include>
	
</body>
</html>