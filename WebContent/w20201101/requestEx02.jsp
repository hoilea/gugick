<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function moven() {
		location.href = "https://naver.com";
	}

</script>
</head>
<body>
	<h2>네이버로 페이지 이동하기</h2>
	
	<!-- //a =>이동
		//javascript => 이동 -->
		
	<a href="https://www.naver.com" target="_blank">네이버 1</a>
	<span onclick="moven()">네이버2</span>
	
	
	<%
		response.sendRedirect("https://naver.com");
	%>

</body>
</html>