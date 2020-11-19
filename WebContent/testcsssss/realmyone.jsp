<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url(https://fonts.googleapis.com/css?family=Varela+Round);
@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);

html, body { background: #333 url("https://codepen.io/images/classy_fabric.png"); }

.slides {   /* 좌우 변경 패널버튼 포지션 */
    padding: 0;
    width: 1050px;
    height: 320px;
    display: block;
    /* margin-left:600px; */
    margin-left:425px;
    margin-right:425px;
    margin-top:400px;
    position: relative;
  
}

.slides * {
    user-select: none;
    -ms-user-select: none;
    -moz-user-select: none;
    -khtml-user-select: none;
    -webkit-user-select: none;
    -webkit-touch-callout: none;
}

.slides input { display: none; }

.slide-container { display: block; }

.slide  {   /* 중앙 픽쳐 포지션  */
    top: 0;
    opacity: 0;
    width: 1050px;
    height: 320px;
    display: block;
    position: absolute;
    transform: scale(0);

    transition: all .7s ease-in-out;
}

.slide img {
    width: 100%;
    height: 100%;
    
   
}

.nav label {   /* 좌우 변경 패널버튼 */
    width: 200px;
    height: 100%;
    display: none;
    position: absolute;

    opacity: 0;
    z-index: 9;
    cursor: pointer;

    transition: opacity .2s;

    color: #FFF;
    font-size: 156pt;
    text-align: center;
    line-height: 380px;
    font-family: "Varela Round", sans-serif;
    background-color: rgba(255, 255, 255, .3);
    
}

.slide:hover + .nav label { opacity: 0.5; }

.nav label:hover { opacity: 1; }

.nav .next { right: 0; }

input:checked + .slide-container  .slide {
    opacity: 1;

    transform: scale(1);

    transition: opacity 1s ease-in-out;
}

input:checked + .slide-container .nav label { display: block; }

.nav-dots {
    width: 100%;
    bottom: 9px;
    height: 11px;
    display: block;
    position: absolute;
    text-align: center;
}

.nav-dots .nav-dot {
    top: -5px;
    width: 11px;
    height: 11px;
    margin: 0 4px;
    position: relative;
    border-radius: 100%;
    display: inline-block;
    background-color: rgba(0, 0, 0, 0.6);
}

.nav-dots .nav-dot:hover {
    cursor: pointer;
    background-color: rgba(0, 0, 0, 0.8);
}


input#img-6:checked ~ .nav-dots label#img-dot-6 {
    background: rgba(0, 0, 0, 0.8);
}
     .lbimg{
    width : 1908px;
    height: 720px;
    margin-top : 50px;
    vertical-align: middle;
    position: absolute;
   }    
   .lbwrap{
   position: absolute;
   }
 
   .fonts{
   position: absolute;
   width:auto;
   margin-top : 120px;
   margin-left: 275px;
   font-family: 'NanumSquare', sans-serif;
   font-size : 28px;
   color: white;
   }

   .sboard1{
   position: absolute;
   width:auto;
   font-family: 'NanumSquare', sans-serif;
    font-size : 28px;
    color: white;
    margin-top : 200px;
    margin-left: 345px;
   }
   .sboard2{
   position: absolute;
   width:auto;
   font-family: 'NanumSquare', sans-serif;
    font-size : 28px;
    color: white;
    margin-top : 200px;
    margin-left: 720px;
   }
   .sboard3{
   position: absolute;
   width:auto;
   font-family: 'NanumSquare', sans-serif;
    font-size : 28px;
    color: white;
    margin-top : 200px;
    margin-left: 1235px;
   }
   
   /* ======================= 정회석부분 =========================== */
   .works-title p {
  font-size: 13px;
  margin-top: 20px;

}
.work-box {
  width: 33%;
  height: 200px;
  margin: 0 auto;
  margin-top: 100px;
  overflow: hidden;
  border: 1px solid black;
  display: inline-block;
  padding: 40px 50px 40px 20px;
  float: none;
}

.work-box-title {
  width: 100%;
  height: 15%;
  padding: 0px 20px;
}
.work-box-title p {
  font-weight: 700;
  color: #1F373D;
}
.work-box-text {
  width: 100%;
  height: 30%;
  padding: 0px 20px 0px 55px;
}
.work-box:hover {
  background-color: #FFCC01;
  opacity: 0.4;
}

#floatMenuss {
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

</style>

<section id="edgar" class="appear">
<div class="lbwrap">
<img src="lbjpg2.png" alt="my images" class="lbimg">
   <div class="fonts">
   세이브더칠드런은 전 세계 아동의 권리가 지켜지도록  노력하고  도움이 필요한 아동들의 경제적, 사회적 자립을 돕습니다.
   </div>
   
   <div class="sboard1">
      <h5> 함께 한 후원자 : 190,051 명 </h5>
   </div>
   <div class="sboard2">
      <h5> 지원 아동·가족 및 지역사회 : 3,845,640명 </h5>
   </div>   
   <div class="sboard3">
      <h5> 전체 후원금 : 48,051,080 원 </h5>
   </div>      
   <ul class="slides">
       <input type="radio" name="radio-btn" id="img-1" checked />
       <li class="slide-container">
           <div class="slide" >
              
               <img src="bimg2.PNG" />
           </div>
           <div class="nav">
               <label for="img-6" class="prev">&#x2039;</label>
               <label for="img-2" class="next">&#x203a;</label>
           </div>
       </li>
   
       <input type="radio" name="radio-btn" id="img-2" />
       <li class="slide-container">
           <div class="slide">
             <img src="https://newsimg.sedaily.com/2017/05/18/1OFYXUB7EE_1.jpg" />
           </div>
           <div class="nav">
               <label for="img-1" class="prev">&#x2039;</label>
               <label for="img-3" class="next">&#x203a;</label>
           </div>
       </li>
   
       <input type="radio" name="radio-btn" id="img-3" />
       <li class="slide-container">
           <div class="slide">
             <img src="https://t1.daumcdn.net/cfile/tistory/243B2E4B55FFE74923">
           </div>
           <div class="nav">
               <label for="img-2" class="prev">&#x2039;</label>
               <label for="img-4" class="next">&#x203a;</label>
           </div>
       </li>
   
       <input type="radio" name="radio-btn" id="img-4" />
       <li class="slide-container">
           <div class="slide">
             <img src="https://i1.wp.com/review.wti.or.kr/wp-content/uploads/2016/07/3%ED%98%B8-%EC%9D%B4%EC%8A%B9%ED%9D%AC-1.jpg" />
           </div>
           <div class="nav">
               <label for="img-3" class="prev">&#x2039;</label>
               <label for="img-5" class="next">&#x203a;</label>
           </div>
       </li>
   
       <input type="radio" name="radio-btn" id="img-5" />
       <li class="slide-container">
           <div class="slide">
             <img src="http://farm9.staticflickr.com/8055/8098750623_66292a35c0_z.jpg" />
           </div>
           <div class="nav">
               <label for="img-4" class="prev">&#x2039;</label>
               <label for="img-6"
                class="next">&#x203a;</label>
           </div>
       </li> 
   
       <input type="radio" name="radio-btn" id="img-6" />
       <li class="slide-container">
           <div class="slide">
             <img src="http://farm9.staticflickr.com/8195/8098750703_797e102da2_z.jpg" />
           </div>
           <div class="nav">
               <label for="img-5" class="prev">&#x2039;</label>
               <label for="img-1" class="next">&#x203a;</label>
           </div>
       </li>
   
       <li class="nav-dots">
         <label for="img-1" class="nav-dot" id="img-dot-1"></label>
         <label for="img-2" class="nav-dot" id="img-dot-2"></label>
         <label for="img-3" class="nav-dot" id="img-dot-3"></label>
         <label for="img-4" class="nav-dot" id="img-dot-4"></label>
         <label for="img-5" class="nav-dot" id="img-dot-5"></label>
         <label for="img-6" class="nav-dot" id="img-dot-6"></label>
       </li>
   </ul>
</div>
</section>
<!-- ===================================  정회석 부분  ========================================== -->
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
<section id="works" >
	<div id="div1">
			<a href="">
				<div class="work-box animate" style="background-image: url(../image/back.jpg);" >
					<div class="work-box-title">
						<p class="left"><h2>01</h2></p>
						<p class="left">개인후원</p>
					</div>
				</div>
			</a>
			<a href="#">
				<div class="work-box animate" style="background-image: url(../image/backs.jpg);">
					<div class="work-box-title">
						<p class="left"><h2>02</h2></p>
						<p class="left">단체후원</p>
					</div>
				</div>
			</a>
			<a href="">
				<div class="work-box animate" style="background-image: url(../image/back2.jpg);">
					<div class="work-box-title">
						<p class="left"><h2>03</h2></p>
						<p class="left">기업후원</p>
					</div>
				</div>
			</a>
			<a href="">
				<div class="work-box animate" style="background-image: url(../image/back4.png);">
					<div class="work-box-title">
						<p class="left"><h2>04</h2></p>
						<p class="left">문의</p>
					</div>
				</div>
			</a>
			<a href="">
				<div class="work-box animate" style="background-image: url(../image/back5.png);">
					<div class="work-box-title">
						<p class="left"><h2>05</h2></p>
						<p class="left">Q&A</p>
					</div>
				</div>
			</a>
			<a href="">
				<div class="work-box animate" style="background-image: url(../image/back6.png);">
					<div class="work-box-title">
						<p class="left"><h2>06</h2></p>
						<p class="left">후원방법</p>
					</div>
				</div>
			</a>
		</div>	
		
			<div id="floatMenuss">    
	    		<p id="textwhatiwant">♥ <br /><br /> 후원하기</p>
			</div>

	</section>



