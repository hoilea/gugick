<%@page import="dao.SsabalDAO"%>
<%@page import="vo.SsabalVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
SsabalVO vo = new SsabalVO();
SsabalDAO dao = new SsabalDAO();

int sumsum = dao.getsum();

%>

<%= sumsum %>
</body>
</html>