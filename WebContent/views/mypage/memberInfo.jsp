<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">



<title>Insert title here</title>
<link rel="stylesheet" href="../../style/member/form.css"
	type="text/css">
	
<style>
body {
	width: 1280px;
	margin: 0 auto;
}
.wrapper{
	float:left;
	width:80%;
	height:800px;
}
.form-wrapper {
	
	width: 50%;
	margin:20px auto;
}

.form-input {
	width: 400px;
	border: 1px solid rgba(0, 0, 0, 0.2);
	border-radius: 5px;
}
.form-button {width: 90px; border-radius: 5px; box-shadow: 10px; font-size:14px;}
.address {width: 400px;}
#goUpdateBtn,#goUpdatePwdFormBtn,#cancel{
	width:30%;
}


</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<%@ include file="../common/myPageSide.jsp"%>

	<section class="wrapper">
		<div class="form-wrapper">
			<h2 id="title">정보 수정</h2>
			<form id="updateForm">
				<div class="form-group">
					<label>이메일</label><br> <input type=text
						class="form-input email" readonly value="<%=loginUser.getEmail()%>">
				</div>
				<div class="form-group">
					<label>닉네임</label><br> <input type=text class="form-input name"
						readonly value="<%=loginUser.getNickName()%>">
				</div>
				<div class="form-group">
					<label>주소</label><br> 
					<%if(loginUser.getAddress()!=null){ %>
					<input type=text class="form-input address" id="roadAddr"  value="<%=loginUser.getAddress()%>">
					<%}else{%>
					<input type=text class="form-input address" id="roadAddr"  placeholder="주소를 등록해주세요">
					<%} %>
					<button class="form-button" type="button" onclick="goPopup()" >주소 검색</button>
					<br> <label>상세 주소</label><br> <input type=text class="form-input addressDetail" id="addrDetail">

				</div>
				<div class="form-group">
					<label>메신저 아이디</label><br> <input type=text class="form-input messengerId">
				</div>
				<div class="form-group">
					<button class="form-button" id="goUpdateBtn">수정 완료</button>
					<button class="form-button" id="cancel" >취소</button>
					<button class="form-button" id="goUpdatePwdFormBtn">비밀번호 변경</button>
				</div>
				
			</form>
		</div>
	</section>

	<%@ include file="../common/footer.jsp"%>
	
	
	<script>
	function goPopup(){
		
	    var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		
	}
	
	function jusoCallBack(roadAddr,addrDetail){
		//document.form.roadAddr.value = roadAddrPart1;
		roadAddr = encodeURIComponent(roadAddr);
		
		$("#roadAddr").val( escape(roadAddr));
		console.log(roadAddr);
		//document.form.addrDetail.value = addrDetail;
		$("#addrDetail").val(addrDetail);

	}
	</script>
</body>
</html>