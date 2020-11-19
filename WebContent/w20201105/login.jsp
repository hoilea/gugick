<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#loginDiv{
		margin: 0 outo;
		width: 120px;
	}
	
	table, tr, td, th{
		border: 1px soild black;
		border-collapse: collapse;
		text-align: center;
	}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* 속성을 지칭할 CSS 선택자가 없으면 속성값으로 불러올 수 있다. 
		$("input:button[value='로그인']").on('click', function(){
			console.log("로그인버튼 클릭")
		}); */
		$("#login").on('click', function(){
			document.frm.action = "loginOk.jsp";
			document.frm.method = "get";		//수업에서는 get 실제로는post방식
			document.frm.submit();
		});
		$("#reg").on('click', function(){
			location.href = register.jsp;
		});
		
		
	});
</script>

</head>
<body>
 <div id="loginDiv">
 	<form action="" name="frm">
 		<table>
 			<tr>
 				<th>ID</th>
 				<td><input type="text" name="" id="" /></td>
 			</tr>
 			<tr>
 				<th>PW</th>
 				<td><input type="text" name="" id="" /></td>
 			</tr>
 			<tr id="bottomTr">
 				<td colspan="2">
 					<input type="button" value="로그인" id="login"/>
 					<input type="button" value="회원가입" id="reg"/>
 				</td>
 			</tr>
 		</table>
 	</form>
 </div>

</body>
</html>