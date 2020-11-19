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

 int rannum = (int)(Math.floor(Math.random()*10));

 String[] tt = new String[10];
 
 for(int i=0; i<tt.length; i++){
    tt[i] = (i+1)+"ㅗㅗ";
 };
       
    
   
 %>
 
 
 <%
 int rannum2 = (int)(Math.floor(Math.random()*10));
 
  String yy[] = new String [10];
  
  yy[0] = "1";
  yy[1] = "2";
  yy[2] = "3";
  yy[3] = "4";
  yy[4] = "5";
  yy[5] = "6";
  yy[6] = "7";
  yy[7] = "8";
  yy[8] = "9";
  yy[9] = "10";
  
 
 %>
  
  <h2><%=rannum%></h2>
  
  <h2><%=yy[rannum2] %></h2>
</body>
</html>