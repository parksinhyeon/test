<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../style/member/form.css"
	type="text/css">
<style>
	body{
	width:1280px;
	
	margin:0 auto;

}
	.form-wrapper{
		margin:auto;
		width:500px;
		height: 1280px;	
	}
	.form-input{
		width:400px;
	}
	.form-button{
		width:80px;
	}
	.address{
		width:400px;	
	}
	
</style>
</head>
<body>
	<%@ include file="../../common/header.jsp"%>
	<%@ include file="../../common/myPageSide.jsp"%>
	

	<div class="form-wrapper">
		<h1>정보 수정</h1>
		<form>
			<div class="form-group">
				<label>이메일</label><br> <input type=text class="form-input email"
					readonly>
			</div>
			<div class="form-group">
				<label>이름</label><br> <input type=text class="form-input name"
					readonly>
			</div>
			<div class="form-group">
				<label>주소</label><br> <input type=text class="form-input address" readonly>
				<button class="form-button" type="button">주소 검색</button>
				<label>상세 주소</label><br> <input type=text  class="form-input addressDetail" readonly>
					
			</div>
			
			<div class="form-group"></div>
			<div class="form-group"></div>
		</form>
	</div>


	<%@ include file="../../common/footer.jsp"%>
</body>
</html>