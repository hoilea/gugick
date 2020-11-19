<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello Jsp World</h1>
<%
	out.println("hello Jsp world");
%>



<!-- 이 줄은 자바 프로그램에서
	출력되고 있습니다 -->
	
	<% out.println("<br> 이 줄은 자바프로그램에서 <br>출력되고 있습니다"); %>
	
	<% out.println("이 줄은 자바 프로그램에서"); %>
	<br>
	<% out.println("출력되고 있습니다."); %>
	
	<hr />
	<hr />
	<!-- 
		하나의 jsp파일에서 두 개 이상의 스크립틀릿을 사용할 수 있음
		이럴 경우 각 스크립틀릿 간에는 변수 공유가 가능하다 
	-->
	<% int i =10; %>
	
	<% 
	int j =20;
	int sum = i+j;	
	%>
	<% out.println(sum); %>
	
</html>