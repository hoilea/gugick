<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인후원</title>
</head>
<body>
    <h1>후원 금액</h1>
    <form action="dunk.jsp">
        <input type="radio" name="coffee" value="10000"> 10000원<br>
        <input type="radio" name="coffee" value="20000"> 20000원<br>
        <input type="radio" name="coffee" value="30000"> 30000원<br>
        <input type="radio" name="coffee" value="50000"> 50000원<br>
        직접입력 : <input type="number"    name="coffee" size="10" >
        <input type="submit" value="고">
    </form>
   
</body>
</html>