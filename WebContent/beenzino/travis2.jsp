<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
 
<%
 	
	//읽어옴
    int co = Integer.parseInt(request.getParameter("done"));
   
    int total = 0; //총 금액
    
    int ko = Integer.parseInt(request.getParameter("check"));
    
    String kol;
    
    if(ko<90){
    	kol = "imp87367715";
    }else{
    	kol = "imp94723924";
    }
   
    out.println(kol);
    //총금액
    total = co;

%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<title>Money</title>

<script>
   $(function(){
      var IMP = window.IMP; // 생략가능
      IMP.init('<%= kol %>'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

      IMP.request_pay({
          pg : 'inicis', // version 1.1.0부터 지원.
          pay_method : 'kakao',
          merchant_uid : 'merchant_' + new Date().getTime(),
          name : '주문명:결제테스트',
          amount : <%=total %>,
          buyer_email : 'iamport@siot.do',
          buyer_name : '김병인',
          //company_nane : 'SAFETY' 
          buyer_tel : '010-1234-5678',
          buyer_addr : '서울특별시 강남구 삼성동',
          buyer_postcode : '123-456',
          m_redirect_url : 'http://www.naver.com'
      }, function(rsp) {
          if ( rsp.success ) {
              var msg = '결제가 완료되었습니다.';
              msg += '고유ID : ' + rsp.imp_uid;
              msg += '구매자 이름 : ' + rsp.buyer_name;   
              msg += '상점 거래ID : ' + rsp.merchant_uid;
              msg += '결제 금액 : ' + rsp.paid_amount;
              msg += '카드 승인번호 : ' + rsp.apply_num;
          } else {
              var msg = '결제에 실패하였습니다.';
              msg += '에러내용 : ' + rsp.error_msg;
          }
          alert(msg);
      });
      
   });



   </script>


</head>
<body>
    <h2>공중분해</h2>

  
</body>
</html>