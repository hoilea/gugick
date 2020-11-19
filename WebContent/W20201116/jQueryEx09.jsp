<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#frm").submit(function(e) {
			//사용자 입력값 받아오기
			var id = $('#id').val();
			var pw = $('#pw').val();
			
			//속성 받아오기
			var form = $(this).attr('name');
			
			//출력
			alert(id +' : '+ pw);
			alert(form + ' :  ' + form);
			
			
			
		});//end of frm
		
		
		
		
	});//end of function
</script>

</head>
<body>
	<form action="#" id="frm" name="frm">
		<table>
			<tr>
				<th>ID</th>
				<td><input type="text" name="id" id="id" /></td>
			</tr>
			<tr>
				<th>PW</th>
				<td><input type="text" name="pw" id="pw" /></td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="전송" />
				</td>
			</tr>
		</table>
	
	
	</form>

</body>
</html>