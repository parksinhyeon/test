<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="style/member/index.css" type="text/css">
</head>

<body>
	<div id="modal" class="animate-pop">

		<div id="popup1">
			<form class="login-form" action="#" method="POST">
				<div class="form-header">
					<h3>로그인</h3>
				</div>
				<!--Email Input-->
				<div class="form-group">
					<input type="text" class="form-input" placeholder="아이디를 입력해주세요.">
				</div>
				<!--Password Input-->
				<div class="form-group">
					<input type="password" class="form-input"
						placeholder="비밀번호를 입력해주세요.">
				</div>
				<!--Login Button-->
				<div class="form-group">
					<button class="form-button" type="submit">로그인</button>
				</div>
				<div class="form-footer">
					아직 회원이 아니세요? <span id="goJoinForm">회원가입하기</span>
				</div>
				<div class="form-footer">
					아이디를 잊어버리셨나요? <span id="goFindIdForm">아이디 찾기</span>
				</div>
				<div class="form-footer">
					비밀번호를 잊어버리셨나요? <span id="goFindPwdForm">비밀번호 찾기</span>
				</div>
			</form>


		</div>
		<div id="popup2">
			<form class="join-form" action="#" method="POST">
				<div class="form-header">
					<h3>회원가입</h3>
				</div>
				<!--아이디 입력-->
				<div class="form-group">
					<input type="text" class="form-input" placeholder="아이디">
				</div>
				<!--비밀번호 입력-->
				<div class="form-group">
					<input type="password" class="form-input" placeholder="비밀번호">
				</div>
				<div class="form-group">
					<input type="password" class="form-input" placeholder="비밀번호 확인">
				</div>
				<div class="form-group">
					<input type="text" class="form-input" placeholder="사용 가능한 이메일">
				</div>
				<div class="form-group">
					<button type="button" id="sendCertiNoBtn">인증번호 발송</button>
					<span></span>
				</div>
				<div class="form-group">
					<input type="text" class="form-input" placeholder="인증번호">
				</div>
				<div class="form-group">
					<button type="button">인증번호 확인</button>
					<span id="timer"><span id="min">3</span><span>:</span><span id="sec">00</span></span>
				</div>
				<!--Login Button-->
				<div class="form-group">
					<button class="form-button" type="submit">회원가입</button>
				</div>
				<div class="form-group">
					<button class="form-button" id="cancel" type="reset">취소</button>
				</div>

			</form>


		</div>
	</div>
	<%@ include file="views/common/header.jsp"%>
	<%@ include file="views/common/saleList.jsp"%>
	<%@ include file="views/common/footer.jsp"%>
</body>

<script>
	$(function() {

		
		/* 회원가입 span 클릭 시 로그인모달 사라지고 회원가입 모달 띄우기  */
		$("#goJoinForm").click(function() {
			$("#popup1").css("display", "none");
			$("#popup2").css("display", "block");
		});
		$("#cancel").click(function() {
			$("#popup1").css("display", "block");
			$("#popup2").css("display", "none");
		});
		$("#sendCertiNoBtn").click(function() {
			var min = 2;
			var sec = 59;

			$("#sendCertiNoBtn").siblings().text("인증번호를 발송하였습니다.").css({
				"fontSize" : "15px",
				"color" : "red"
			});
			
			$("#timer").css("display","inline");
			
			
			var secTimer = window.setInterval(function() {
				if (sec < 0) {
					sec = 59;
				}
				if(sec>=10){
					$("#sec").text(sec);
				}else{
					$("#sec").text("0"+sec);					
				}
				sec--;
			}, 1000);

			setTimeout(function() {
				$("#min").text(min);
			}, 1000)
			setTimeout(function() {
				$("#min").text(min);
			}, 1000)
			var minTimer = window.setInterval(function() {
				
				if (min>0) {
					min--;
				}
				$("#min").text(min);
				
			}, 60000);

			window.setTimeout(function() {
				clearInterval(secTimer);
				clearInterval(minTimer);
				$("#timer").text("")
				$("#timer").text("인증 시간이 초과되었습니다.").css({
					"fontSize" : "15px",
					"color" : "red"
				});
			}, 180000)

		});
		
		
		$("#goFindIdForm").click(function(){
			location.href="views/member/mypage/findId.jsp";
		});
		$("#goFindPwdForm").click(function(){
			location.href="views/member/mypage/findPwd.jsp";
		});
		
		

	});
</script>
</html>