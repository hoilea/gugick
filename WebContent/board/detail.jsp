<%@page import="vo.boardVO"%>
<%@page import="dao.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail.jsp</title>
<style type="text/css">
	table{
	width:900px;
	margin: 0 auto; }
	table,tr,th,td{
	border : 1px solid black;
	border-collapse: collapse;
	}
	
	th{
	padding : 2px;
	font-size: 20px;
	background-color: #FF6666;
	
	}
	#contents{
	background-color : #FFCCFF;
	}
</style>
</head>
<body>
<!-- 게시글 번호에 따른 데이터 조회 결과를 각 TD에 출력해 보세요. -->
<!-- 	 table>tr#top>(th#t$+td)*3 -->
			<%
	//jsp page 우선순위  => jsp -> javascriptlet
	String no = request.getParameter("bno"); //bno으로 정보를 받아올때bno가 필요하기떄문에 데이터정보를 받아옵니다
	boardDAO dao = new boardDAO(); 
	boardVO vo = new boardVO();

// 	if (no != null) {  //bno가 null값이 아닐떄는  값을 받아온다            
// 		int bno = Integer.parseInt(no); //상품번호는 int로 받아야하기떄문에. (DAO페이지에서 메소드를 int로 선언)

// 		vo = dao.getData(bno);
// 	}
		if(no!=null){
			int bno = Integer.parseInt(no);
			
			vo = dao.getData(bno);
		}else {
			response.sendRedirect("list.jsp");
		}

		
%>

		<table>
			<tr id="top">
				<th id="t1">작성자</th>
				<td><%=vo.getWriter()  %></td>
				<th id="t2">조회수</th>
				<td><%=vo.getHits() %></td>
				<th id="t3">작성일시</th>
				<td><%=vo.getRegdate() %></td>
			</tr>
			

			<tr id="title">
				<th>제목</th>
				<td colspan="5"><%=vo.getTitle() %></td>
			</tr>
			<tr id="contents">
				<th>내용</th>
				<td colspan="5">
				<textarea disabled="disabled" name="" id="" cols="200" rows="10"><%=vo.getContents() %></textarea>
				<!-- disalbled 는textarea에서 사용자가 함부로 내용을 바꿀수없도록 block 해놓는 것이다. -->
				</td>
			</tr>
			<tr>
				<td colspan="6">
				<a href="list.jsp"><input type="button" value="목록" /></a>
				<a href="modify.jsp?bno=<%=vo.getBno()%>"><input type="button" value="수정" /></a>
<%-- 				<a href="deleteOk.jspbno=<%=vo.getBno()%>"><input type="button" value="삭제" /></a> --%>
				</td>
			</tr>
		</table>

</body>
</html>