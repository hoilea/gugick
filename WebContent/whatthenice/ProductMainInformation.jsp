<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.liness{
	border-bottom: 1px solid black;
}
</style>

<body>

	<table>
		<tr>
			<td>상품 주요정보</td>
		</tr>
	
		<tr class="liness">
		<td>브랜드</td>
		<td><input type="text" name="" id="" /></td>
		<td><input type="checkbox" name="" id="" />브랜드없음 (또는 자체제작)</td>
		</tr>
		
		<tr class="liness">
			<td>제조사</td>
			<td><input type="text" name="" id="" /></td>
			<td></td>
		</tr>
		
		<tr class="liness">
			<td>인증정보</td>
			<td><input type="checkbox" name="" id="" />인증.신고대상<input type="checkbox" name="" id="" />인증.신고 등 면제
			<input type="checkbox" name="" id="" />상세페이지 별도표기<input type="checkbox" name="" id="" />인증.신고대상 아님</td>
		</tr>
		
		<tr class="liness">
			<td>병행수입</td>
			<td><input type="checkbox" name="" id="" />병행수입    <input type="checkbox" name="" id="" />병행수입</td>
		</tr>
		
		<tr class="liness">
			<td>미성년자 구매<td>
			<td><input type="checkbox" name="" id="" />가능    <input type="checkbox" name="" id="" />불가능</td>
		</tr>
		
		<tr class="liness">
			<td>인당 최대구매수량</td>
			<td><input type="checkbox" name="" id="" />설정함    <input type="checkbox" name="" id="" />설정안함</td>
		</tr>
		
	</table>


</body>
</html>