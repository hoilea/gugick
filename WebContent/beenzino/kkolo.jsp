




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


 		
 		
 		
});
</script>
</head>
<body>

		
		<img src="../images/GUCCI1.png" alt=""  onclick=""/>
		
</body>
</html>