<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	width:1280px;
}
aside{
	float:left;
	width:200px;
	height:800px;
	border-right:1px solid lightgrey;
	margin:auto;
}	

ul{
	list-style: none;
}
.sideList{
	margin-bottom:20px;
}

</style>
</head>

<body>
	<aside>
		<div id="wrapper">
		
			<h2>마이페이지</h2>
			<ul>
				
				<li class="sideList">
				<div class="ListWrapper">정보 수정</div>
				</li>
				<li class="sideList">
				<div class="ListWrapper">찜 내역 조회</div>
				</li>
				<li class="sideList">
				<div class="ListWrapper">거래 내역</div>
				</li>
				<li class="sideList">
				<div class="ListWrapper">내 게시글</div>
				</li>
				
			</ul>
		</div>
	</aside>
</body>
</html>