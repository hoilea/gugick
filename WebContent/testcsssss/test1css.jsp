<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {

	// 배너의 위치를 가져와 저장
	var floatPosition = parseInt($("#floatMenu").css('top'));
	

	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";



		$("#floatMenu").stop().animate({
			"top" : newPosition
		}, 000);

	}).scroll();

});
</script>
<style type="text/css">


.statistic {
  width: 100%;
  min-height: 650px;
  padding: 40px 0px 80px 50px;
   margin: 0 auto;
}


.statistic-box {
  background-color: #F6F5F4;
  width: 400px;
  height: 150px;
  margin: 50px 60px 30px 50px;
  padding-top: 40px;
  float: left;
  border:solid black 1px;
}
.statistic-box p:nth-child(1) {
  font-size: 40px;
  font-weight: 700;
  color: #FFCC01;
  margin: 0px;
  padding: 0px;
}
.statistic-box p:nth-child(2) {
  font-size: 14px;
  font-weight: 700;
  color: gray;
  margin: 0px;
  padding: 0px;
}
/* 따라다니는 메뉴 */
#floatMenu {
	position: absolute;
	width: 200px;
	height: 200px;
	right: 50px;
	top: 520px;
	background-color: red;
	color: #fff;
	border-radius: 100px 100px 100px 100px;
	
}
#textwhatiwant{
	text-align: center;
	font-size: 40px;
	font-size: 30px;
}
/* #textwhatiwant2{
	font-size: 70px;
	font-weight
	text-align: center;
}

 */

</style>
</head>
<body>


	<section class="statistic" id="about">
          <div class="col-12 col-lg-6 statistic-wrapper">
          
          	<!-- 첫번째 박스 -->
            <div class="statistic-box text-center" style="background-image: url(../image/back.jpg);">
              <a href="#"><p>개인후원</p></a>
              <p>돈주라</p>
            </div>
            <!-- 두번째 박스 -->
            <div class="statistic-box text-center" style="background-image: url(../image/back2.jpg);">
              <a href="#"><p>개인후원</p></a>
              <p>돈주라</p>
            </div>
            <!-- 세번째 박스 -->
            <div class="statistic-box text-center" style="background-image: url(../image/back3.jpg);">
              <a href="#"><p>단체후원</p></a>
              <p>많줘라</p>
            </div>
            <!-- 다음 박스 -->
            <div class="statistic-box text-center" style="background-image: url(../image/back4.png);">
              <a href="#"><p>문의</p></a>
              <p>전화줘라</p>
            </div>
            <!-- ㅇㅇㅇ -->
			<div class="statistic-box text-center" style="background-image: url(../image/back5.png);">
              <a href="#"><p>Q&A</p></a>
              <p>질문줘라</p>
            </div>
            <!-- ============== -->
            <div class="statistic-box text-center" style="background-image: url(../image/back6.png);">
              <a href="#"><p>후원가이드</p></a>
              <p>이렇게 하면된다</p>
            </div>
            

          </div>

    </section>
    
    <div id="floatMenu">
    
    	<p id="textwhatiwant">♥ <br /><br /> 후원하기</p>
	
	</div>
    
    

</body>
</html>