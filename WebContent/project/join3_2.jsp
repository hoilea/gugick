<%@page import="dao.Join2_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../css/join3.css?ver=1" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							guideTextBox.innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}
</script>

<script type="text/javascript">
	$(function() {

		$("#alert-success").hide();
		$("#alert-danger").hide();

		$('.email3').change(function() {
			$(".email3 option:selected").each(function() {

				console.log($(this).val());

				if ($(this).val() == '1') { //직접입력한 경우
					$(".emailBox2").val('');
					$(".emailBox2").attr("disabled", false);
				} else {
					$(".emailBox2").val($(this).text());
					$(".emailBox2").attr("disabled", true);

				}

			});

		});//이메일값 넣기

		$("input").keyup(function() {
			var pwd1 = $("#password1").val(); //pwd1의 값
			var pwd2 = $("#password2").val(); //pwd1의 값

			if (pwd1 != "" || pwd2 != "") {
				if (pwd1 == pwd2) {
					$("#alert-success").show();
					$("#alert-danger").hide();
					$("#submit").removeAttr("disabled");
				} else {
					$("#alert-success").hide();
					$("#alert-danger").show();
					$("#submit").attr("disabled", "disabled");
				}
			}

		});

		$('#userId').keyup(
				function() {

					// console.log(this.value);
					for (var i = 0; i < this.value.length; i++) {

						var ch = this.value.charAt(i);
						//console.log(ch)

						if (!(ch >= '0' && ch <= '9')
								&& !(ch >= 'a' && ch <= 'z')
								&& !(ch >= 'A' && ch <= 'Z')) {

							//console.log("영어 대소문자, 숫자만")

							$('#idCheck').text("영어 대소문자와 숫자만 입력 가능합니다.")
							break;
						} else {
							$('#idCheck').text("")

						}
						//if end
					}//for end
				});//아이디 유효성 end

	});//function end

	
	
	
	function openWin() {
		window.open("http://dart.fss.or.kr/", "네이버새창",
				"width=800, height=700, toolbar=no, menubar=no,resizable=yes");
	} // open window 

	//아이디 유효성 검사
	var id = document.getElementById("userId").value;
	function confirmId() {

		if (id = "") {
			alert("ID를 입력하세요");
			return;
		}

		url = ("idCheck2.jsp?id=" + document.getElementById("userId").value);
		open(
				url,
				"confirm",
		"toolbar = no, location = no, status = np, menubar = no, width = 550, height=300, left=700, top=250, menubar =no, overflow-x:hidden,overflow-y:hidden ");
	}

	//빈칸 유효성 검사
	function check() {
		if($.trim($("#groupName").val()) == ""){
			alert("단체명을 입력하세요 ");
			$("#groupName").val("").focus();
			return false;
		}
		if($.trim($("#groupMan").val()) == ""){
			alert("담당자 이름을 입력하세요 ");
			$("#groupMan").val("").focus();
			return false;
		}
		if($.trim($("#userNum").val()) == ""){
			alert("단체번호를 입력하세요 ");
			$("#userNum").val("").focus();
			return false;
		}
		if($.trim($("#userId").val()) == ""){
			alert("아이디를 입력하세요 ");
			$("#userId").val("").focus();
			return false;
		}
		if($.trim($("#password1").val()) == ""){
			alert("비밀번호를 체크하세요 ");
			$("#password1").val("").focus();
			return false;
		}
		if($.trim($("#password2").val()) == ""){
			alert("비밀번호를 체크하세요 ");
			$("#password2").val("").focus();
			return false;
		}
		if($.trim($(".hpBox").val()) == ""){
			alert("핸드폰 번호를 입력하세요 ");
			$(".hpBox").val("").focus();
			return false;
		}
		if($.trim($("#email1").val()) == ""){
			alert("이메일을 입력하세요 ");
			$("#email1").val("").focus();
			return false;
		}
	

		if($.trim($("#sample4_detailAddress").val()) == ""){
			alert("주소를 입력하세요 ");
			$("#sample4_detailAddress").val("").focus();
			return false;
		}
		
	}
</script>
<script type="text/javascript"></script>

</head>
<body>
	<div class="head">
		<h1 style="font-size: 29px">회원 가입</h1>
	</div>
	<ul>
		<li class="topLi" style="left: 100px"><i class="ibefore"></i>
			<h2>약관동의</h2></li>
		<li class="topLi" style="left: 280px"><i class="ibefore"
			style="background-color: #3E66AE"></i>
			<h2>정보입력</h2></li>
		<li class="topLi" style="left: 460px"><i></i>
			<h2>가입완료</h2></li>
	</ul>
	<div class="box-container">
		<div class="topText" style="height: 50px">
			<h1 class="mainTitle">회원정보를 입력해주세요.</h1>
			(필수)
		</div>
		<!-- form box 회원가입정보입력 부분 -->
		<form method="post" accept-charset="utf-8" onsubmit="return check()" class="form-box">

			<table class="table input_table">

				<tr>
					<th><span>구분</span></th>
					<td><span class="choiceTitle">단체</span></td>
				</tr>
				<tr>
					<th><span>단체명</span></th>
					<td><input name="groupName" type="text" class="basic" id="groupName"></td>
				</tr>
				<tr>
					<th><span>담당자명</span></th>
					<td><input name="name" type="text" class="basic" id="groupMan"></td>
				</tr>
					<tr>
					<th><span>단체 번호</span></th>
					<td><input name="groupNumber" type="text"id="userNum" class="groupNum"
						placeholder="13자리로 입력해주세요 ('-'제외)"
						onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
						maxlength="13" style="width: 350px"> 
						<input type="button"  id="btnCheck" value="번호 찾기" onclick="openWin()" class="groupBtn" style="width: 150px" />
						
					</td>
				</tr>

		<tr>

					<th><span>아이디</span></th>
					<td><input name="userId" id="userId" type="text"
						placeholder="아이디는 영문, 숫자를 혼합하여  6~16자로 사용해 주세요" class="groupNum"
						style="width: 350px" /> 
						<input type="button"  id="btnCheck" value="중복 체크" onclick="confirmId()" name="confirm_id" class="groupBtn" /> 
						<input type="hidden" name="idDuplication"
						value="idUncheck" style="width: 120px" />
						<div id="idCheck" style="color: red"></div></td>
				</tr>

				<tr>
					<th><span>비밀번호</span></th>
					<td><input type="password"
						title="비밀번호 입력. 비밀번호는 영문, 숫자를 혼합하여  6~16자로 사용해 주세요."
						placeholder="비밀번호는 영문, 숫자를 혼합하여  6~16자로 사용해 주세요." name="password1"
						id="password1" maxlength="16" class="basic"></td>
				</tr>
				<tr>
					<th><span>비밀번호 확인</span></th>
					<td><input type="password" title="비밀번호를 한번 더 입력해주세요."
						placeholder="비밀번호를 한번 더 입력해주세요." name="password2" id="password2"
						maxlength="16" class="basic">
						<div class="alert alert-success" id="alert-success">비밀번호가
							일치합니다.</div>
						<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지
							않습니다.</div></td>
				</tr>
				<tr>
					<th><span>단체 대표번호</span></th>
					<td><select name="hp1" class="hpAll">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
					</select> - <input name="hp2" type="text" maxlength="4" class="hpBox"
						onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"> -
						<input name="hp3" type="text" maxlength="4" class="hpBox"
						onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>
				</tr>
				<tr>
					<th><span>이메일</span></th>
					<td>
						<div>
							<input name="email1" type="text" class="emailBox1" maxlength="30" id="email1">
							@ <input name="email2" type="text" class="emailBox2" value="">
							<div class="select">
								<select name="email_select" title="이메일주소 선택" class="email3">
									<option selected="selected" value="1">직접입력</option>
									<option value="naver.com">naver.com</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
									<option value="lycos.co.kr">lycos.co.kr</option>
									<option value="gmail.com">gmail.com</option>
									<option value="empal.com">empal.com</option>
									<option value="freechal.com">freechal.com</option>
									<option value="dreamwiz.com">dreamwiz.com</option>
									<option value="hanafos.com">hanafos.com</option>
									<option value="korea.com">korea.com</option>
									<option value="magicn.com">magicn.com</option>
									<option value="nate.com">nate.com</option>
									<option value="netian.com">netian.com</option>
									<option value="hanmir.com">hanmir.com</option>
									<option value="chollian.net">chollian.net</option>
									<option value="hitel.net">hitel.net</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="orgio.net">orgio.net</option>
									<option value="hanmail.net">hanmail.net</option>
								</select> 
								 <input type="submit" value="인증받기"
									onclick="javascript: form.action='../project/emailSend.jsp';"
									 style="width: 150px" />
							 -->
							</div>
					</td>
				</tr>


				<tr>
					<th><span>주소</span></th>
					<td>
						<div style="margin-left: 40px">
							<input type="text" id="sample4_postcode" class="d_form mini"
								placeholder="우편번호" name="pcode"> <input type="button"
								onclick="sample4_execDaumPostcode()" value="우편번호 찾기"
								class="d_btn"> <br /> <input type="text"
								id="sample4_roadAddress" class="d_form std" placeholder="도로명주소"
								style="width: 350px" name="addr1"> <input type="text"
								id="sample4_jibunAddress" class="d_form std" placeholder="지번주소"
								style="width: 200px" name="addr2"> <span id="guide"
								style="color: #999; display: none"> </span> <input type="text"
								id="sample4_extraAddress" class="d_form" placeholder="참고항목"
								style="width: 260px" name="addr3"> <input type="text"
								id="sample4_detailAddress" class="d_form" placeholder="상세주소"
								name="addr4">
						</div>
					</td>

				</tr>
			</table>
			<!-- table-input 종료-->

			<!-- 회원가입 확인버튼 -->
			<div class="btn-group">
				<input type="submit" value="회원가입"
					onclick="javascript: form.action='../project/join2Ok.jsp';"
					class="btn" />
			</div>
		</form>
		<!-- form-box end -->
		<div class="help-join">
			<div>
				<h1>회원가입을 도와드릴까요?</h1>
				<h2>
					전화로 간편하게 회원 가입하세요.<br>(운영시간 : 평일 9시 ~ 18시)
				</h2>
			</div>
			<div>
				<a href="#n" class="cursor-default"><i></i><span>02-6900-4400</span></a>
			</div>
		</div>
	</div>

	</div>
</body>
</html>