<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인후원</title>
<script type="text/javascript">
	function mon() {
		  var txt = document.getElementById("kakao").value;
		  out.println("dkdk");
	}
</script>
</head>
<body>

    <h1>후원 금액</h1>
    <form action="travis2.jsp">
        <input type="radio" name="done" value="10000"> 1만원
        <input type="radio" name="done" value="20000"> 2만원 <br>
        <input type="radio" name="done" value="30000"> 3만원
        <input type="radio" name="done" value="50000"> 5만원 <br>
         직접입력 : <input type="number"    name="done" size="10" > <br>
         불우한 아이들에게 후원해주는 거임
         <a href="https://www.unicef.or.kr/?">유니세프</a>
          가면 잘 나와있더라
              
              <br><br><br><br><br><br>    
         <img src="../image/wowowo.png"  alt="" onclick="mon()" id="kakao">
         <img src="../image/card.jpg"  alt="" onclick="">
                 <input type="submit" value="후원하기">
    </form>
   
</body>
</html>