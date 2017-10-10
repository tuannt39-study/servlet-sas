<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet Demo</title>
</head>
<body>
	<form style="text-align: center;" action="login" method="post">
		User name: <input type="text" value="" name="username" /> <br /> Password: <input
			type="password" value="" name="password" /> <br /> <input type="submit"
			value="Ok" />
	</form>
	
	<br /> <!-- Được biên dịch ở runtime, mỗi lần chạy lại biên dịch 1 lần, thời gian sẽ lâu hơn -->
	<jsp:include page="/common/header.jsp" >
		<jsp:param value="TOM" name="avatarName"/>
	</jsp:include>
	
</body>
</html>