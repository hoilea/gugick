<%@page import="dao.SsabalDAO"%>
<%@page import="vo.kokoaVO"%>
<%@page import="vo.SsabalVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  
  <script type="text/javascript">
    function inNumber(){
        if(event.keyCode<48 || event.keyCode>57){
           event.returnValue=false;
        }
    }
    </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(function(){
		      //직접입력 인풋박스 기존에는 숨어있다가
		$("#selboxDirect").hide();
		 
		$("#selbox").change(function() {
				
		                //직접입력을 누를 때 나타남
				if($("#selbox").val() == "direct") {
					$("#selboxDirect").show();
				}  else {
					$("#selboxDirect").hide();
				}
				
			}) 
			
		});
		
</script>
<body>
</head>
<body>
				<select name="person" id="personbox">
					<option value="0">선택</option>
					<option value="100000">100000</option>
					<option value="50000">50000</option>
					<option value="30000">30000</option>
					<option value="20000">20000</option>
					<option value="direct">직접입력</option>
				</select>

			<td style="border-right: hidden;"><input type="text" onkeypress="inNumber();" id="selboxDirect" name="selboxDirect"> </td>
	
 
  
     
</body>
</html>