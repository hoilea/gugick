<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQueryPrac.jps</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/httpRequest.js">   </script>
<script type="text/javascript">

$(function(){
   

   
   $("#div1").click(function(){
      //right 버튼을 클릭하면 이미지가 오른쪽으로 800 이동 시켜보세요.
      //$('div').css("marginLeft", "10px");   //      $('img').css({"marginLeft"  : "800px"});

      var w = parseInt($('#div1').css("width"))*2;      //출력하면 문자로 나오는데, 계산을 위해선 파싱필요
         //      var w = $('img').width();   
      var h = parseInt($('#div1').css("height"))*2;         
         //      var h = $('img').height();
      var go =parseInt($('#div1').css("width"))*2;

      //$('div').css({"marginLeft"  : "200px"});
      

      
      
      $('#div1').animate({marginLeft:go});
      $('#div1').animate({width:w});      
      $('#div1').animate({height:h});
      
      
      
      

      
      


   });
   
   $("#div2").click(function(){
      //right 버튼을 클릭하면 이미지가 오른쪽으로 800 이동 시켜보세요.
      //$('div').css("marginLeft", "10px");   //      $('img').css({"marginLeft"  : "800px"});

      var w = parseInt($('#div2').css("width"))*2;      //출력하면 문자로 나오는데, 계산을 위해선 파싱필요
         //      var w = $('img').width();   
      var h = parseInt($('#div2').css("height"))*2;         
         //      var h = $('img').height();
      var go =parseInt($('#div2').css("width"))*2;

      //$('div').css({"marginLeft"  : "200px"});
      $('#div2').animate({marginLeft:go});
      $('#div2').animate({width:w});      
      $('#div2').animate({height:h});
      $('#div2').hide(300);
     
   });


      setInterval(function() {
         $("#starPoint").append("@");
      }, 750);
   
     $('#starPoint').click(function(){
         $("#starPoint").append("@");
      });

        
    
   
     $(".div3").mouseenter(function(){
         $(this).animate({marginLeft : 400, marginTop : 400}, 500)
                .animate({marginLeft : 600, marginTop : 60}, 500)
               .animate({marginLeft : 0,   marginTop : 0  }, 500);
         
         $(".div4").mouseenter(function(){
             $(this).animate({marginLeft : 600, marginTop : 600}, 500)
                    .animate({marginLeft : 400, marginTop : 40}, 500)
                   .animate({marginLeft : 0,   marginTop : 0  }, 500);
          }); 
      }); 
     
 
   
   
   
});




</script>

<style type = "text/css">
   #div1, #div2{
      width : 100px;
      height: 100px;
      background-color: red;
   }
   .div3, .div4{
   background-color: gray;
   width : 100px;
   height: 100px;
   
   }

</style>
</head>
<body>
<h3>
[1] <br />
 빨간색 div1은 클릭하면 좌표이동 후 너비가 먼저 켜지고, 다음으로 높이가 커짐~   <br />

 빨간색 div2은 클릭하면 좌표이동 후 너비가 먼저 켜지고, 다음으로 높이가 커진 후 사라지기   <br />

 star 기호가 1초에 한번씩 증가하고, 마우스 클릭 또한 한번씩 증가   <br /><hr />

[2] <br />
 노란색 div 에 마우스가 오버되면 좌표이동후 되돌아오기
<hr />
</h3>

<div id="div1">
</div>
<div id="div2">
</div>
<div id="starPoint">@ : 
</div>
 <div class="div3"></div><br />
 <div class="div4"></div><br />

    


 
     


<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


</body>
</html>