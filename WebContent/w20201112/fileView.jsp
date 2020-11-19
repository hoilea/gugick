<%@page import="vo.FileuploadtestVO"%>
<%@page import="vo.FileuploadtestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileView.jsp</title>
</head>
<body>
	<%
		String writer = request.getParameter("writer");
		
		//DB에 접근해서 filePath를 찾아오기
		FileuploadtestDAO dao = new FileuploadtestDAO();
		FileuploadtestVO vo = dao.getData(writer);
	
	%>
	
	<h2><%=vo.getFilePath() %></h2>
	<img src="<%=vo.getFilePath() %>" alt="" />

</body>
</html>