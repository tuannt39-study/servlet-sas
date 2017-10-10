<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet Demo</title>
</head>
<body>

	<jsp:useBean id="student" class="vn.hkd.servlet.model.Student">
	setProperty: <!-- Được thực hiện khi scope không tồn tại, ko có id="student", có thể dùng nhiều property (ở đây ta chỉ có 1 name trong class Student) -->
	<%-- <jsp:setProperty property="name" name="student" param="name"/> --%>
	<%-- <jsp:setProperty property="name" name="student"/> --%>
	<jsp:setProperty property="*" name="student"/>
	<%-- <jsp:setProperty property="name" name="student" param="region"/> --%>
	</jsp:useBean>
	<br />
	getProperty:
	<jsp:getProperty property="name" name="student"/>
	<br />
	
	<!-- Standard Actions làm cho jsp gần giống html thuần hơn là java -->
	
	Student name: ${param.name} <br />
	Region: ${param.region}
	
</body>
</html>