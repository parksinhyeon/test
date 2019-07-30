<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
}

.localSel {
	float: left;
	width: 150px;
	height: 40px;
	text-align: center;
}

.local {
	border-top: 1px solid black;
	border-right: 1px solid black;
}

.public {
	border-bottom: 1px solid black;
}

#wrapper {
	/* 		border:none; */
	width: 1280px;
	height: 700px;
	align-content: center;
	clear: both;
	background: lightgrey;
	margin-top:20px;
}

#listFrame {
	border: 1px solid black;
	margin-left: 140px;
	height: 100%;
	width: 1002px;
}

.salImg {
	width: 250px;
	height: 230px;
	border: 1px solid black;
}

ul {
	list-style: none;
	margin:0 ;
	margin-top:20px;
	padding: 0;
}

#list1 li, #list2 li {
	float: left;
	margin: 0;
	padding: 0;
}

ul>li>div {
	width: 250px;
	height: 70px;
	border: 1px solid black;
	margin: 0;
}
</style>
</head>
<body>
	<div>
		<div class="localSel local">지역</div>
		<div class="localSel public">전국</div>
	</div>
	<section id="wrapper">


		<div id="listFrame">
			<ul id="list1">
				<li><img src="images/river1.png" class="salImg">
					<div></div>
				</li>

				<li><img src="images/river1.png" class="salImg">
					<div></div>
				</li>
				<li><img src="images/river1.png" class="salImg">
					<div></div>
				</li>
				<li><img src="images/river1.png" class="salImg">
					<div></div>
				</li>

			</ul>
			<ul id="list2">
				<li><img src="images/river1.png" class="salImg">
					<div></div>
				</li>
				<li><img src="images/river1.png" class="salImg">
					<div></div>
				</li>
				<li><img src="images/river1.png" class="salImg">
					<div></div>
				</li>
				<li><img src="images/river1.png" class="salImg">
					<div></div>
				</li>
			</ul>
		</div>


	</section>
</body>
</html>