<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	width: 400px;
	height: 300px;
	background-color: white;
	margin: auto;
	margin-top: 300px;
	z-index: 30;
	border-radius: 15px;
	text-align: center;
}

.animate-pop {
	margin: auto;
	animation: animatepop 0.1s;
}

@
keyframes animatepop {from { width:1000px;
	height: 900px;
}

to {
	width: 400px;
	height: 300px;
}
}
</style>
</head>

<body>
	<div id="modal" class="animate-pop">

		<div id="popup1">asd</div>
	</div>
	<%@ include file="views/common/header.jsp"%>
	<%@ include file="views/common/saleList.jsp"%>
	<%@ include file="views/common/footer.jsp"%>
</body>

<script>
	$(function(){
		$("body").on("click",function(){
			$("#modal").css("display","block");
		
		});
	});
</script>
</html>