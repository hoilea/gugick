<%@page import="dao.boardV2_DAO"%>
<%@page import="vo.boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 /* 페이징 처리 */
 
 	// 현재 페이지(currentPage) 얻어오기
	String cp = request.getParameter("cp");
	
	int currentPage = 0;	

	if(cp!=null){
		currentPage = Integer.parseInt(cp);
	}else {
		currentPage = 1;
	}

	boardV2_DAO dao = new boardV2_DAO();
	
	// 총 게시글 수
	int totalCount = dao.getTotalCount();
	
	// 한 페이지당 레코드 수 : 10
	int recordByPage = 10;
	
	// 총 페이지 수 
	int totalPage =
		(totalCount%recordByPage==0)?totalCount/recordByPage:totalCount/recordByPage+1;  

 	/*
 	현재 페이지 번호
 	  1    2    3    4 .....
 	
 	각 페이지별 레코드 번호
 	  1    11   21   31
 	
 	 10    20   30   40 
	*/
	
	// 현재 페이지 - 레코드 시작번호
	int startNo = (currentPage-1)*recordByPage+1; 
	
 	// 현재 페이지 - 레코드 끝번호
 	int endNo = currentPage*recordByPage;
 	
 	/*
	out.println("<h2>총 게시물 수 : "+ totalCount+ "</h2>");
 	out.println("<h2>한 페이지당 게시물 수 : "+ recordByPage+"</h2>");
 	out.println("<h2>총 페이지 수 : " + totalPage+"</h2>");
 	out.println("<h2>현재 페이지 번호 : " + currentPage+"</h2>");
 	out.println("<h2>현재 페이지 시작번호 : " + startNo +"</h2>");
 	out.println("<h2>현재 페이지 끝번호 : " + endNo + "</h2>");
	*/
%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<style type="text/css">
	table {
		width: 1000px;
		margin: 0 auto;
	}
	
	table, tr, th, td {
		border: 1px solid black;
		border-collapse: collapse;		
	}
	
	th{
		padding: 2px;
		font-size: 20px;
		text-shadow : 2px 2px 2px #FFFFFF;
		background: 
		-webkit-linear-gradient(top, #9dd53a 0%,#9dd53a 17%,#9dd53a 17%,#9dd53a 20%,#a1d54f 29%,#a1d54f 35%,#a1d54f 44%,#9dd53a 54%,#80c217 59%,#a1d54f); 
	}
	
	.col1{
		width: 15%;
		text-align: center;
	}
	.col4 {
		width: 15%;
		text-align: center;
	}
	
	.col2 {
		width: 50%; 
	}
	
	.col3 {
		width: 20%;
		text-align: center;
	}
	
	.btn{
		text-align: right;
	}
	
	#pageList{
		text-align: center;
	}
	
	#page {
		width:20px;
		margin : 0;
		padding : 2px;
		border: 1px solid gray;
	}
	
	.red{
	color : red;
	font-size : 20px;
	height : 100px;
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//tr - 첫번째 tr이 0 일때	
	
	$("tr:first").css("background-color", "pink");
	$("tr:last").css("background-color", "pink");
	$("tr:odd").css("background-color", "yellow");
	
	
	//마우스가 over되면 red 클래스 삽입
	$("th").on('mouseover', function(){
// 		$(this).addClass("red");
		$(this).toggleClass("red");
		
	});
	
	//마우스가 아웃되면 red 클래스 제거
	$("th").on('mouseout', function(){
		$(this).removeClass("red");
	});

});


</script>

</head>
<body>
	<table>
		<tr>
			<th class="col1">게시물번호</th>
			<th class="col2">제목</th>
			<th class="col3">작성자</th>
			<th class="col4">조회수</th>
		</tr>
		<!-- 사용자가 작성한 게시글을 전부 출력해보세요 -->
		<%
		
		ArrayList<boardVO> list = dao.getAllData(startNo, endNo);
		
		for(boardVO vo : list){
		%>
		<tr>
			<td class="col1"><%=vo.getBno() %></td>
			<td class="col2">
				<a href="detail.jsp?bno=<%=vo.getBno() %>"><%=vo.getTitle() %></a>			
			</td>
			<td class="col3"><%=vo.getWriter() %></td>
			<td class="col4"><%=vo.getHits() %></td>
		</tr>
		<%
		}
		
		%>	
		<tr>
			<td colspan="4" id="pageList">
				<%
					for(int i=currentPage-3; i<=currentPage+3; i++){
						if(i<=0){
							continue;
						}else if(i>totalPage){
							break;
						}else {
				%>	
				<a href="list.jsp?cp=<%=i %>"><span id="page"><%=i %></span></a>
				<%
					}// if end	
						
				}// for end
				
				%>			
			</td>
		</tr>
			
		<tr>
			<td colspan="4" class="btn">
				<a href="write.jsp"><input type="button" value="등록" /></a>
			</td>
		</tr>
		
	</table>		

</body>
</html>




