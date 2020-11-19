<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prtGuGudan.jsp</title>
</head>
<body>


<!-- 사용자가 선택한 단 정보가 넘어오면 해당 구구단을 브라우저에 출력해보세요 -->



<%
 String str = request.getParameter("d1");

   out.println(str);
   
   String value = str.substring(0,1);
   
   out.println(value);
   
   int dan = Integer.parseInt(value);
   
   out.println(dan + "<br>");
   
   
   for(int i=1; i<10; i++){
      out.println(dan+"*"+i+"="+(dan*i)+"<br>");
   }

 

%>
</body>
</html>