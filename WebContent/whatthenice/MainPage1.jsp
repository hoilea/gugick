
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
    .table {
      border-collapse: collapse;
      border-top: 3px solid #168;
      margin: 0 auto;
      margin-top: 60px;
    }  
    .table th {
      color: #168;
      background: #f0f6f9;
      text-align: center;
    }
    .table th, .table td {
      padding: 10px;
      border: 1px solid #ddd;
    }
    .table th:first-child, .table td:first-child {
    
      border-left: 0;
    }
    .table th:last-child, .table td:last-child {
      border-right: 0;
    }
    .table tr td:first-child{
      text-align: center;
    }
    .table caption{caption-side: bottom; display: none;}
    
    th{
    	font-size: 20px;
    }
    th{
    	width : 350px;
    }
    /* ====================테이블만드는거====================== */
  	select{
  		width:350px;height:40px;
  		text-align:center;
    padding:10px;
    font-size:14px;
    border:1px solid #ccc;
    background-color:#fff;
    appearance:none; /* 기본 스타일 없애기 */
    
    -webkit-appearance:none;
    -moz-appearance:none;
    -o-appearance:none;
  	}
  	input{
  	width: 350px;
  	height: 40px;
  	font-size:17px;
    border:1px solid #ccc;
    text-align: center;
  	}
  	
  	#btn{ 
  		border-top-left-radius: 5px;
  		border-bottom-left-radius: 5px;
  		margin-right:-4px; 
  		border-top-right-radius: 5px;
  		border-bottom-right-radius: 5px;
  	} 

  	#btn{ border: 1px solid skyblue; background-color: rgba(0,0,0,0); color: skyblue; padding: 5px; } 
  	#btn:hover{ color:white; background-color: skyblue; }
	
	h5, h6{
	text-align: center;
	}
  	
  </style>
  

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


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



</head>
<body>

<form name="form"">

  <table class="table">
    <caption>표 제목</caption>
    <tr>
    	<th style="border-right: hidden; text-align: right;"></th>
    	<th style="border-right: hidden;">카테고리 선택</th>
    	<th style="border-right: hidden;"></th>
    </tr>

		<tr><td style="border-right: hidden;"></td>
			
			
			<td style="border-right: hidden; text-align: center;">
				<select name="person" id="person" >
					<option value="0" style="text-align: center">선택</option>
					<option value="의류">의류</option>
					<option value="신발">신발</option>
					<option value="가전">가전</option>
					<option value="도서">도서</option>
					<option value="생활/건강">생활/건강</option>
				</select>
			</td>
			<td></td>
		</tr>
		<!-- ==================================================================== -->    
  </table> 
  
  <!-- ========================================================================= -->
  
  <table class="table">
    <tr>
    	<th style="border-right: hidden; text-align: right;"></th>
    	<th style="border-right: hidden;">상품명</th>
    	<th style="border-right: hidden;"></th>
    </tr>

		<tr>
		<td style="border-right: hidden;"></td>
			
			
			<td style="border-right: hidden; text-align: center;">
				<input type="text">
				
			</td>
			<td></td>
		</tr>
  </table>
  
  
		<!-- ==================================================================== -->    
		
	 <table class="table" >
    <tr>
    	<th style="border-right: hidden; text-align: right;"></th>
    	<th style="border-right: hidden;">판매가 등록</th>
    	<th style="border-right: hidden;"></th>
    </tr>
	<tt>
		<td>
판매가입력 : <input name="goodsprice" type="text" size="15" maxlength="10"  style="ime-mode:disabled;" onkeyup="avg_price();" onKeyPress="onlyNum()"> 원
 
할인율입력: <input name="commem_dc" type="text" size="5" maxlength="3" style="ime-mode:disabled;" onkeyup="avg_price();" onkeypress="return onlyDotNum()" value="0"> %
 
할인가는 <input type="text" name="totalprice" size="5" value="0" READONLY style="text-align:right"> 원 입니다.
		</td>
	</tr>
  </table>
		<!-- ==================================================================== -->    
  	

  

  
 </form>
<!-- =========================결제end================================= --> 


</body>
</html>