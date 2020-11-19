<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login</title>

<style>
*{   /* 전체 css 초기화 */
   margin: 0;
   padding: 0;
   font-family: "나눔스퀘어";
   font-size: 16px;
}

#inner{
   margin-top: 200px;
   margin-left: 660px;
   width: 600px;
   height: 600px;
   border : 1px solid gray;
   position: absolute;
}

#id{

   margin-left:85px;
   margin-bottom:10px;
   margin-top:50px;
   width: 420px;
   height: 50px;
   border: 1px solid #cbcbca;
   text-align: left;
}
#pw{
   margin-left:85px;
   margin-bottom:10px;
   width: 420px;
   height: 50px;
   border: 1px solid #cbcbca;
}



.btn{
   width: 215px;
   height: 70px;
   margin-top: 5px;
   margin-left:85px;

   border-radius: 5px 0px 0px 5px;      /*둥글게*/
   border-style: none;
   border:1px solid #4364ae;
   font-size: 16px;
   background-color : white;
   font-family: "나눔스퀘어";
   font-weight:bold;
   color:#4364ae;

   text-align: center;


}

.btn:hover{/* 마우스 오버 */

  background-color: #4364ae;
  color: white;
}



.btn2{
  width: 215px;
  height: 70px;
  margin-top: 5px;
  margin-left: -1px;

  border-radius: 0px 5px 5px 0px;      /*둥글게*/
  border-style: none;
  border:1px solid #4364ae;       /* ㅌㅔㅜ리 */
  font-size: 16px;
  background-color : white;
  font-family: "나눔스퀘어";
  font-weight:bold;
  color:#4364ae;

  text-align: center;


}

.btn2:hover{/* 마우스 오버 */

  background-color: #4364ae;
  color: white;
}

.btn3{
   width: 430px;
   height: 70px;
   margin-top: 5px;
   margin-left:85px;

   border-radius: 5px 5px 5px 5px;
   border-style: none;
   border:1px solid #4364ae;
   font-size: 16px;
   background-color : white;
   font-family: "나눔스퀘어";
   font-weight:bold;
   color:#4364ae;

   text-align: center;


}

.btn3:hover{/* 마우스 오버 */

  background-color: #4364ae;
  color: white;
}



h1{
   text-align: center;
   margin-top: 70px;
   size: 30px;
   font-size: 30px;	
   font-weight: 900;
   letter-spacing: -2px;

}

#ckb{
   margin-top : 12px;
   margin-left: 85px;
   width: 20px;
   height: 20px;


}
#lb1{
vertical-align: middle;
}



h5{
display: block;
float: left;

}
#div2{
float: left;
}

#div3{
float: right;

margin-right: 85px;
margin-top: 20px;
}

</style>





<script type="text/javascript">

</script>
</head>
<body>
   <div id="inner">
        <h1>세이프티 로그인</h1>

      <form action="">
      <br>
         <input type="button" value="휴대폰 번호로 찾기" class="btn" ><input type="button" value="이메일 주소로 찾기"class="btn2" >         
         <input type="text" name="" id="id" placeholder="이름" autofocus style="padding-left: 10px;"> <br />
         <input type="text" name=""id="pw" placeholder="패스워드" autofocus style="padding-left: 10px;">


           <br />


		<input type="button" value="로그인" class="btn3" >
      </form>

   </div>
</body>
</html>

