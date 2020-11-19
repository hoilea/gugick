<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="loginOk.jsp">
	<div id="loginform">
		<table>
			<tr>
				<th>ID : </th>
				<td><input type="text" name="id" id=""/></td>
			</tr>
			<tr>
				<th>PW : </th>
				<td><input type="text" name="pw" id="" /></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="submit" value="로그인" />
				<input type="button" value="회원가입" />
				</td>
			</tr>
		</table>
	</div>
	
</form>

</body>
</html>