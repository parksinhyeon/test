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
	#form-wrapper{
		margin:auto;
		width:400px;	
	}
</style>
</head>
<body>
	<%@ include file="../../common/header.jsp"%>


	<div id="form-wrapper">
		<form>
			<div class="form-group">
				<label>이메일</label><br> <input type=text class="form-input"
					readonly>
			</div>
			<div class="form-group">
				<label>이름</label><br> <input type=text class="form-input"
					readonly>
			</div>
			<div class="form-group">
				<label>주소</label><br> <input type=text class="form-input"
					readonly>
				<button class="form-button" type="button">주소 검색</button>
			</div>
			<div class="form-group"></div>
			<div class="form-group"></div>
		</form>
	</div>


	<%@ include file="../../common/footer.jsp"%>
</body>
</html>