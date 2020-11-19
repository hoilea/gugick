






<!-- JSON 객체 이용 {name 1 : value1,  name2 : value2 .....} -->





<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQueryEx06.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	//1번 버튼을 누르면 CSS 로고를 적용하기. (아래 div 사용)
	$("#btn1").click(function(){
		//$을 이용하여 객체를 찾아가면 결국 느려짐 - $(선택지)를 변수로 선언해두면 리소스를 아낄 수 있음.
		var $box1 = $("#box1");
		
//1. 맵방식 - JSON 객체 이용 {name 1 : value1,  name2 : value2 .....}
	$box1.css({
		"color" : "red",
		"background-color" : "green"
	});
 });
	
	
	
//2번 버튼을 누르면 prompt를 띄워서 어떤 배경색을 사용할지 물어보고 box1의 배경색을 변경
 		$("#btn2").on('click', function(){
 			
 			var color = prompt("어떤 배경색을 사용할까요?");
 			$("#box2").css("background-color","color");
 	
 		}); //btn2 click end
 			$("#btn3").click(function(){
 				
 			var width = $("#box2").css('width');
 		   //CSS를 속성만 주고 value 값을 안주면 그 원래 값을 가져올 수 있음
 		   alert(width);
 				
 		});//btn3 click end
 		
 		
 		//4번 버튼을 누르면 box1에 myStyle 클래스를 추가
 		$("#btn4").click(function(){
 			$("#box1").addClass("myStyle");
 			
 		});
 		
 		//5번 버튼을 누르면 box1에서 myStyle 클래스를 제거
        $("#btn5").click(function(){
           $("#box1").removeClass("myStyle");
        });
  //----------------------------------------------------------      
     //방식1
         //이미지에 마우스가 올라오면 테두리를 추가
        $("img").on("mouseover", function(){
           $(this).css("border", "3px solid red");
        });
    
        //이미지에서 마우스가 빠지면 테두리를 제거
        $("img").on("mouseout", function(){
           $(this).css("border", "none");
        });
     //방식2   
//        $("img").hover(function(){
//           $(this).addClass("myStyle");
//        }), function(){
//           $(this).removeClass("myStyle");
//        });

 		
 		
 		
});
</script>
</head>
<body>
		<!-- CSS 처리를 위한 버튼  -->
		<input type="button" value="btn1" id="btn1"/>
		<input type="button" value="btn2" id="btn2"/>
		<input type="button" value="btn3" id="btn3"/>
		<input type="button" value="btn4" id="btn4"/>
		<input type="button" value="btn5" id="btn5"/>
		
		
		<div id="box1">box1</div>
		<div id="box2">box2</div>
		<div id="box2">box3</div>
		
		<img src="../images/GUCCI1.png" alt="" />
		
</body>
</html>