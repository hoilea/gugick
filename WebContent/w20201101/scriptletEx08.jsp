<%@ page import = "java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     Calendar 클래스를 사용해서 브라우저에 현재 시각 출력해보세요  (추상클래스 new() 불가능)
     
     현재 시각은 ~~시 ~~분 ~~초 입니다. - h2
     
     <% 
      Calendar time = Calendar.getInstance();
     
     int hour = time.get(Calendar.HOUR_OF_DAY);
     int min = time.get(Calendar.MINUTE);
     int sec = time.get(Calendar.SECOND);
     
     
     
     
   
     %>
<h2>현재시각은<%=hour %>시<%=min %>분<%=sec %>초</h2>     

</body>
</html>