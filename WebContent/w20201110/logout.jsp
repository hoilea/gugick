<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
	<%
		Cookie c = new Cookie("memberLogin", "-150");
		c.setMaxAge(0);
		response.addCookie(c);
		response.sendRedirect("loginCk.jsp");
	
	%>

</body>
</html>