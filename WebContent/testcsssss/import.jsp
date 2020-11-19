
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script type="text/javascript">

	$(function(){

		      //직접입력 인풋박스 기존에는 숨어있다가

		$("#personboxDirect").hide();

		 

		$("#personbox").change(function() {

				

		                //직접입력을 누를 때 나타남

				if($("#personbox").val() == "direct") {

					$("#personboxDirect").show();

				}  else {

					$("#personboxDirect").hide();

				}

				

			}) 

			

		});

		

</script>

<body>

<select id="personbox" name="personbox">

 

	<option value="">선택</option>

 

	<option value="1">하나</option>

 

	<option value="2">둘</option>

 

	<option value="3">셋</option>

	<option value="direct">직접입력</option>

 

</select>

 

									

 

 

<input type="text" id="personboxDirect" name="personboxDirect"/>

 

</body>

</html>

