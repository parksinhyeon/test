<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
#modal {
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.6);
	z-index: 30;
	position: fixed;
	left: 0;
	display: none;
	float: left;
}

#popup1 {
	border-radius:5px;
	width: 350px;
	margin: 150px auto;
	border: 1px solid #ddd;
	padding: 2rem;
	background: #ffffff;
	border: 1px solid #014F01;
}
#popup2 {
	border-radius:5px;
	width: 350px;
	margin: 150px auto;
	border: 1px solid #ddd;
	padding: 2rem;
	background: #ffffff;
	border: 1px solid #014F01;
	display:none;
}

.animate-pop {
	margin: auto;
	animation: animatepop 0.5s;
}

/* @
keyframes animatepop {
	from { 
	width:1000px;
	height: 900px;
}

to {
	width: 400px;
	height: 300px;
}

}
 */

.form-input {
	background: #fafafa;
	border: 1px solid #eeeeee;
	padding: 12px;
	width: 100%;
}

.form-group {
	margin-bottom: 1rem;
}

.form-button {
	background: #69d2e7;
	border: 1px solid #ddd;
	color: #ffffff;
	padding: 10px;
	width: 100%;
	text-transform: uppercase;
}

.form-button:hover {
	background: #69c8e7;
}

.form-header {
	text-align: center;
	margin-bottom: 2rem;
}

.form-footer {
	text-align: left;
	color: #00007D;
}

.form-footer span {
	float:right;
	color: red;
	cursor: pointer;
}

input::placeholder {
	color: navy;
}
</style>
</head>

<body>
	<div id="modal" class="animate-pop">

		<div id="popup1">
			<form class="login-form" action="#" method="POST">
				<div class="form-header">
					<h3>Login</h3>
				</div>
				<!--Email Input-->
				<div class="form-group">
					<input type="text" class="form-input" placeholder="Email을 입력해주세요.">
				</div>
				<!--Password Input-->
				<div class="form-group">
					<input type="password" class="form-input"
						placeholder="password를 입력해주세요.">
				</div>
				<!--Login Button-->
				<div class="form-group">
					<button class="form-button" type="submit">로그인</button>
				</div>
				<div class="form-footer">
					아직 회원이 아니세요? <span id="goJoinForm">회원가입하기</span>
				</div>
				<div class="form-footer">
					아이디를 잊어버리셨나요? <span id="goJoinForm">아이디 찾기</span>
				</div>
				<div class="form-footer">
					비밀번호를 잊어버리셨나요? <span id="goJoinForm">비밀번호 찾기</span>
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
					<input type="text" class="form-input"
						placeholder="아이디">
				</div>
				<!--비밀번호 입력-->
				<div class="form-group">
					<input type="password" class="form-input"
						placeholder="비밀번호">
				</div>
				<div class="form-group">
					<input type="password" class="form-input"
						placeholder="비밀번호 확인">
				</div>
				<div class="form-group">
					<input type="text" class="form-input" placeholder="사용 가능한 이메일">
				</div>
				<div class="form-group">
					<button  type="button" id="sendCertiNoBtn">인증번호 발송</button>
					<span>3:00</span>
				</div>
				<div class="form-group">
					<input type="text" class="form-input" placeholder="인증번호">
				</div>
				<div class="form-group">
					<button type="button">인증번호 확인</button>
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
		$("body").on("click", function() {
			$("#modal").css("display", "block");

		});
		$("#goJoinForm").click(function(){
			$("#popup1").css("display","none");
			$("#popup2").css("display","block");
		});
		$("#cancel").click(function(){
			$("#popup1").css("display","block");
			$("#popup2").css("display","none");
		});
		$("#sendCertiNoBtn").click(function(){
			$("#sendCertiNoBtn").siblings().text("인증번호를 발송하였습니다.").css({"fontSize":"15px","color":"red"});
		});
	});
</script>
</html>