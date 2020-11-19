<%@page import="dao.boardV2_DAO"%>
<%@page import="vo.boardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail.jsp</title>
<style type="text/css">
	table {width: 900px; margin: 0 auto;}
	table, tr, th, td{
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
	
	#contents {
		background-color: #aaa;
	}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#delConfirm").on('click', function(){
// 		console.log("click");	
		var flag = confirm("정말 삭제하시겠습니까?");
		
		if(flag){
// 			console.log("삭제수행");
			//창 이동시키기 --> deleteOk.jsp --> 삭제 기능을수행해보세요
		}
	});
	
	
});
</script>
</head>
<body>
	<!-- 게시글 번호에 따른 데이터 조회 결과를 각 td에 출력해보세요 -->
	<%
		String no = request.getParameter("bno");
	
		boardV2_DAO dao = new boardV2_DAO();
		boardVO vo = new boardVO();	
		
		if(no!=null){
			int bno = Integer.parseInt(no);
			
			//조회수 증가 메소드
			dao.raiseHits(bno);	
			
			vo = dao.getData(bno);			
		}else {
			response.sendRedirect("list.jsp");
		}	
	%>
	<table>
		<tr id="top">
			<th id="t1">작성자</th>
			<td><%=vo.getWriter() %></td>
			<th id="t2">조회수</th>
			<td><%=vo.getHits() %></td>
			<th id="t3">작성일시</th>
			<td><%=vo.getRegdate() %></td>
		</tr>
		<tr id="title">
			<th>제목</th>
			<td colspan="5">
				<%=vo.getTitle() %>
			</td>
		</tr>
		<tr id="contents">
			<th>내용</th>
			<td colspan="5">
				<textarea disabled="disabled" name="" id="" cols="200" rows="10"><%=vo.getContents() %></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="6">
				<a href="list.jsp"><input type="button" value="목록" /></a>
				<a href="modify.jsp?bno=<%=vo.getBno() %>"><input type="button" value="수정" /></a>
				<a href="deleteOk.jsp?bno=<%=vo.getBno() %>">
				<input type="button" value="삭제" id="delConfirm"/>
				</a>
							
			</td>
		</tr>		
	</table>

</body>
</html>








