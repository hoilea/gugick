<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<script>
// 자동 계산 (딜러 할인)
function avg_price() {
  goodsprice = parseFloat(form.goodsprice.value);
  commem_dc = parseFloat(form.commem_dc.value);
  form.totalprice.value = Math.round(goodsprice -((goodsprice * commem_dc) / 100));
}
 
// 숫자와 도트(.)만 허용
function onlyDotNum(){
  var eCode = event.keyCode;
    if ( ! ( eCode == 46 || (( eCode > 47 && eCode < 58 )) ) )
  return false;
}
 
// 숫자만 허용
function onlyNum() {
  if ((event.keyCode < 48) || (event.keyCode > 57)) {
    event.returnValue = false;
  }
}
</script>
 
<body>

<table name="form">
	<tr>
		<th>가격 입력</th>
	<tr>
	
	<th>
		<td>판매가입력 : <input name="goodsprice" type="text" size="15" maxlength="10"  style="ime-mode:disabled;" onkeyup="avg_price();" onKeyPress="onlyNum()"> 원</td>
	</th>
	<th>
		<td>할인율입력: <input name="commem_dc" type="text" size="5" maxlength="3" style="ime-mode:disabled;" onkeyup="avg_price();" onkeypress="return onlyDotNum()" value="0"> %</td>
	</tr>
	<th>
		<td>할인가는 <input type="text" name="totalprice" size="5" value="0" READONLY style="text-align:right"> 원 입니다.</td>
	</th>



</table>



<form name="form">
판매가입력 : <input name="goodsprice" type="text" size="15" maxlength="10"  style="ime-mode:disabled;" onkeyup="avg_price();" onKeyPress="onlyNum()"> 원
 
할인율입력: <input name="commem_dc" type="text" size="5" maxlength="3" style="ime-mode:disabled;" onkeyup="avg_price();" onkeypress="return onlyDotNum()" value="0"> %
 
할인가는 <input type="text" name="totalprice" size="5" value="0" READONLY style="text-align:right"> 원 입니다.
</form>
</body>


</body>
</html>