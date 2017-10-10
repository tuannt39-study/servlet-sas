
<!-- Bỏ qua Expression language EL, hoặc cấu trình trong xml -->
<%-- <%@ page isELIgnored="true" %> --%>

<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Appinfo"%>
<%@ page import="vn.hkd.servlet.model.Image" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet Demo</title>
</head>
<body>
	Image name: <%= ((Image)request.getAttribute("imageName")).getName() %>
	<br />
	<img alt="image" src="images/img.jpg">
	<!-- Scope là phạm vi của 1 attribute trong giới hạn nào đó (pageContext là trong trang jsp, tiếp đến là scope lớn hơn là request giữa client đến server, scope 
	lớn thứ 3 là sesion là trong 1 phiên giao dịch người dùng có nhiều request, lớn hơn nữa là application chứa toàn bộ liên quan đến hệ thống) -->
	
	<% pageContext.setAttribute("scope", "page Context"); %>
	<br />
	Scope of the Get attribute: <%= pageContext.getAttribute("scope") %>
	<br />
	<!-- Tìm trong phạm vi nhỏ nhất, tiếp đến lớn dần. Ko tìm thấy thì báo null -->
	Scope of the Find attribute: <%= pageContext.findAttribute("otherScope") %>
	<br />
	Session scope of the Find attribute: <%= pageContext.getAttribute("otherScope", PageContext.SESSION_SCOPE) %>
	<br />
	Request scope of the Find attribute: <%= pageContext.getAttribute("otherScope", PageContext.REQUEST_SCOPE) %>
	<br />
	Application scope of the Find attribute: <%= pageContext.getAttribute("otherScope", PageContext.APPLICATION_SCOPE) %>
	
	<br /> <!-- Sử dụng với đối tượng MAP: key của nó là scope và value của nó pageContext-->
	Scope of the Get attribute by Expression language EL: ${pageScope.scope}
	<br />
	Scope of the Get attribute by Expression language EL: ${4+5}
	
	<!-- pageScope, requestScope, sessionScope, applicationScope
	pageContext:  getAttribute, request, session, application-->
	
	<br />
	Student name is: ${requestScope.student.name}
	
	<br />
	<%= application.getInitParameter("account") %>
	<br />
	Account: ${initParam.account}
	
	<br /> <!-- Sử dụng index với 1 list, array -->
	Scope of the Get attribute by Expression language EL: ${pageScope["scope"]}
	<br />
	Languages: ${requestScope.languages}
	<br />
	Languages: ${requestScope.languages[1]}
	
	<br />
	Example of Standard Actions:
	<br />
	<!-- Class là cái concrete class(ko phải abstract, interface) ,type là kiểu class chính nó hoặc superclass--> 
	<jsp:useBean id="student" type="vn.hkd.servlet.model.Person" class="vn.hkd.servlet.model.Student" scope="request">
	setProperty: <!-- Được thực hiện khi scope không tồn tại, ko có id="student" -->
	<jsp:setProperty property="name" name="student" value="Dola"/>
	</jsp:useBean>
	<br />
	getProperty:
	<jsp:getProperty property="name" name="student"/>
	
</body>
</html>