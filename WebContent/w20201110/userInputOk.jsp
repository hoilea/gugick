<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userInpuOk.jsp</title>
</head>
<body>
	<!-- userInput.jsp에서 사용자가 전달한 값을 쿠키에 저장 -->
	<%
		String txt = request.getParameter("txt");
		
		//out.println("txt : "+txt);
		
		//쿠키 한글인식
		String data = URLEncoder.encode(txt, "UTF-8");
		
		//쿠키에 저장 - 쿠키는 반드시 쿠키이름(매개변수)이 필요함!
		Cookie c = new Cookie("chococookie", data);
		
		//쿠키 유효기간(유통기간) - (초*분*시간)
		c.setMaxAge(300);
		
		response.addCookie(c);
		
		
	%>
	<h1>쿠키가 잘 저장되었습니다.</h1>
	<a href="userCookieList.jsp"><span>쿠키목록보기</span></a>

</body>
</html>