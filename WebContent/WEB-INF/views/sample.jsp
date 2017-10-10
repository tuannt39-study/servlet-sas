
<%-- <%@ directive attribute="value" %>
	3 loại: page, include, taglib
	<%@ page ...%>
	<%@ include ...%>
	<%@ taglib prefix, tagdir, uri ...%>
 --%>

<%@page import="java.util.ArrayList"%>
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
	<%@ include file="/common/header.jsp" %>
	
	<br />
	This is a sample. <br />
	This is Blog <%= config.getInitParameter("Blog") %> <br />
	<%-- <% request. %> --%>
	<%-- <% response. %> --%>
	<%-- <% context. %> --%>
	<%-- <% config. %> --%>
	<%-- <% application. %> --%>
	<%-- <% outprintln("Hello"); %> --%>
	<%-- <% exception. %> --%>
	<%-- <% pageContext. %> --%>
	<%-- <% session. %> --%>

	<%
		out.println("Hello JSP <br />");
		out.println("This is sample.jsp <br />");
		int i = 8;
		ArrayList list;
	%>
	Value of i :
	<%=i%>
</body>
</html>