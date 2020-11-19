<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AjaxEx05.jsp</title>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<script type="text/javascript">
   function ajaxToServer() {
      var txt = document.getElementById("txt").value;
      
      // ex) hello.jsp?txt=홍길동
      var params = "txt=" + encodeURIComponent(txt);
      
      
      sendRequest('hello.jsp', params, callback, 'GET');
      //function sendRequest(url, params, callback, method){}
      
   }
   
   function callback() {
      // readyState : 0 ~ 4 단계 (4이면 완료)
      if(xhr.readyState==4) {
         // 그리고 정상페이지이면
         if(xhr.status==200){
            //alert(xhr.responseText);
            var div1 = document.getElementById("div1");
            
            div1.innerHTML = '<h1>' + xhr.responseText + '</h1>';
         }
      }
      
   }



</script>
</head>
<body>
   <input type="text" name="" id="txt" />
   <input type="button" value="입력" onclick="ajaxToServer()"/>
   
   <div id="div1">
      
   
   
   </div>
   

</body>
</html>
