<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>SAFETY 자고로 돈은 꽁돈이다</title>

<style>
	.mainMenu{
		float: left;
		width: 320px;
		list-style-type: none;
	}
	
	li.mainMenu ul {
		margin: 0;
		display: block;
		list-style-type: none;
		padding: 0;
	}
	
	li.mainMenu a {
		width: 300px;
		display: block;
		background-color:  #a0b2d7;
		color: white;
		text-decoration: none;
		padding: 10px;
		border-bottom: 1px solid #fff;
	}
	
	
   ul.dropdownMenu li.hover{
   	background-color : #a0b2d7;
   
   }
   .mm{
   		align-content: right;
   }
	

	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('li.mainMenu ul').hide();
		
		
		$('li.mainMenu').hover(function() {			
			$('ul', this).stop().slideDown(500);
			
		}, function() {
			$('ul', this).stop().slideUp(500);
		});
		
		
		
	});
	
	
</script>
</head>
<body>

   			<div style="height: 1px;">
     <ul id="dropdownMenu">
		<li class="mainMenu">
			<img alt="." src="../image/kakao2.png">
			<a href="" id="mm">메뉴</a>
			<ul>
				<li><a href="">회사 소개</a></li>
				<li><a href="">후원 문의</a></li>
				<li><a href="">후원</a></li>
			</ul>
			<a></a>
		</li>
	</ul>

	
            </div>
          
     

    <!-- Header -->
    <header>
  
                    
                    <div class="intro">
                    <br><br><br><br><br><br><br><br>
                        <h1 class="name"></h1>

                        <span class="skills"> <br><br><br><br><br><br><br><br><br><br></span>
                    </div>
   
    </header>



 

    
               
                        <div class="modal-body">
                            <h2>오케오케</h2>
                            <hr class="star-primary">
                            <img src="../image/kakao.png"  alt="">
                            <p>
                             작은 나눔의 첫걸음 – 일시후원
   							누구나 한 걸음부터 시작합니다. 후원자분들의 작은 정성이 모여 수많은 어린이 구호 활동을<br>
							펼쳤습니다. SAFETY와 함께하는 나눔의 첫걸음, 모이면 기적이 만들어집니다.
                            </p>
                        </div>



      
                        <div class="modal-body">
                            <h2>개인 후원</h2>
                            <hr class="star-primary">
                            
                            <p>
                              <form action="travis2.jsp">
                                <input type="radio" name="done" value="10000"> 1만원
                                <input type="radio" name="done" value="20000"> 2만원 <br>
                                <input type="radio" name="done" value="30000"> 3만원
                                <input type="radio" name="done" value="50000"> 5만원 <br>
                                직접입력 : <input type="number"    name="done" size="10" > <br>
                                불우한 아이들에게 후원해주는 거임
                                <a href="https://www.unicef.or.kr/?">유니세프</a>
                                가면 잘 나와있더라
                                <br>
                                
                                <br><br><br><br>
                                
                                <img src="../image/wowowo.png"  alt="" onclick="">

                                <img src="../image/card.jpg"  alt="" value="888"><br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="" name="check" value="99">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="checkbox" id="" name="check" value="88">
                                
                                <br>
                                <input type="submit" value="후원하기">
                              </form>
                            </p>

                        </div>
                
    

<!-- -============================================================ -->


          
                        <div class="modal-body">
                            <h2>이건 단체에서 후원하는거야</h2>
                            <hr class="star-primary">
                            <img src="../image/giup.jpg" alt="">
                            <p>
                              <a href="https://www.unicef.or.kr/?">유니세프</a>
                              가면 잘 나와있더라 들어가봐
                            </p>
                        </div>

   
  <!--  ================================================= -->
   
              <br><br><br><br><br><br><br><br>
              
              	<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="../image/pay.png" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../image/giup.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="../image/kakao2.png" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


 <br><br><br><br><br><br><br><br>

<!-- Footer -->
    <footer class="text-center">

        
                    <div class="footer">
                        단체명 : SAFETY <br>
                        주소 : 서울시 은평구 대조동 서오릉로8길 12-1 단독 <br>
                        대표자 : 정준호 <br>
                        연락처 : 112 <br>
                        Copyright @ hoilea
                    </div>
     
    </footer>

</body>

</html>