<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="font-size: 24px">
<%
	out.println("1. "+request.getRequestURL());
	//URL : 웹상에서 서비스를 제공하는 각 서버 안에 있는 파일들의 위치를 찾아줌
	
	out.println("2. "+request.getRequestURI()+"<br />");	
	//URI : HTTP프로토콜, 호스트명, 포트번호를 제외한 나머지 정보
	
	out.println("3. 사용자로부터 입력을 받을 경우 <br/>");
	//급여 : 20000000
	out.println("급여 : "+request.getParameter("pay")+"<br/>");


	out.println("4. 사용자로부터 입력된 값이 여러 개일 경우"+ "<br/>");
	out.println("급여 : "+request.getParameter("pay")+"<br/>");
	out.println("성명 : "+request.getParameter("name")+"<br/>");
	out.println("java : "+request.getParameter("java")+"<br/>");
	out.println("jsp : "+request.getParameter("jsp")+"<br/>");
	out.println("spring : "+request.getParameter("spring")+"<br/>");
	
	//총계와 평균 구하기
	int java =Integer.parseInt(request.getParameter("java"));
	int jsp =Integer.parseInt(request.getParameter("jsp"));
	int spring =Integer.parseInt(request.getParameter("spring"));
	
	out.println("총점 : "+(java+jsp+spring)+"<br/>");
	out.println("평균 : "+(java+jsp+spring)/3+"<br/>");
	
	
	
	/* 급여 : 20000000;
	성명 : 홍길동
	java : 90
	jsp : 85
	spring : 80 */


%>
</div>

</body>
</html>