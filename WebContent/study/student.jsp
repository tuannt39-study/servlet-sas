<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet Demo</title>
</head>
<body>
	<form action="detail.jsp" method="get">
	Student name: <input type="text" name="name"> <br />
	Region:
	<select name="region">
		<option value="asia">Asia</option>
		<option value="america">America</option>
		<option value="europe">Europe</option>
		<option value="africa">Africa</option>
	</select>
	<br />
	<input type="submit" value="Ok">
	
	</form>
</body>
</html>