<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptletEx09</title>
</head>
<body>
	<!-- 이비지 목록 배열에 저장 브라우저에 포스터 10장 출력 -->
	<% String str[] = {
			"img1.jpg",
			"img2.jpg",
			"img3.jpg", 
			"img4.jpg",
			"img5.jpg",
			"img6.jpg", 
			"img7.jpg", 
			"img8.jpg",
			"img9.jpg",
			"img10.jpg"
			};
	
	
	
	out.println("<h2>영화 포스터 </h2>");
	for(int i=0; i<str.length; i++){
	out.println("<img src="+str[i]+">");
	}
	%>

</body>
</html>