<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/join4.css" type="text/css" />
</head>
<body>
<div id="contents" class="container">
	<div class="head">
		<h1 style="font-size: 29px">ȸ�� ����</h1>
	</div>
	
	
	<ul>
		<li class="topLi" style="left: 100px"><i class="ibefore"></i>
			<h2>�������</h2></li>
		<li class="topLi" style="left: 280px"><i class="ibefore"></i>
			<h2>�����Է�</h2></li>
		<li class="topLi" style="left: 460px"><i
			style="background-color: #3E66AE"></i>
			<h2>���ԿϷ�</h2></li>
	</ul>
	
	
	
	<div class="member-contents">
		<div class="contents"> 
			<div class="finish-title" id="finish-title">
				<%
				/* ȸ�� ���̵� �ҷ����� */
					request.setCharacterEncoding("UTF-8");
					String name = (String)request.getSession().getAttribute("userName"); 
				%>
				<h1 class="welcomeTxt"><%=name%>��, ȸ�������� �Ϸ�Ǿ����ϴ�.
				</h1>
				<h2 class="welcomeTxt2">SAFTY�� �Բ� �̿��� ���� ������ �����غ�����</h2>

			</div>	<!-- finish-title -->
			
			<a class="btn btn-dark" href="<!-- ���������� -->" style="margin-top: 60px">Ȩ���� �̵�</a>

			<div class="finish-grid-wrap"> 
				<ul>
					<li class="finish-grid-1" id="finish-grid-1"><a href="" class="none"
						title="�Ŀ��ڰ��̵� ������ �̵�">
							<h2>�Ŀ��� ó���̶��</h2>
							<h1>�Ŀ��ڰ��̵�</h1> <i></i>
					</a></li>
					<li class="finish-grid-2" id="finish-grid-2"><a href="" class="none"
						title="�Ŀ��ϱ� ������ �̵�">
							<h2>�Ŀ��� ���ϽŴٸ�</h2>
							<h1>�Ŀ��ϱ�</h1> <i></i>
					</a></li>
					<li class="finish-grid-3" id="finish-grid-3"><a href="" class="none"
						title="�ҽĺ��� ������ �̵�">
							<h2>�Ŀ��̾߱Ⱑ �ñ��Ͻø�</h2>
							<h1>�ҽĺ���</h1> <i></i>
					</a></li>
				</ul>
			 </div>  
 		</div>	 	<!-- contents -->
	
		
	</div>
	<!-- member-contents end -->


	</div>
</body>
</html>