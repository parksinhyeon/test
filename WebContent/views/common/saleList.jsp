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
	
	width: 1280px;
	height: 1280px;
	align-content: center;
	clear: both;
	
	margin:0;
}

#listFrame {

	margin:20px auto;
	height: 100%;
	width: 1002px;
}
.imgFrame{
	width:250px;
	height:230px;
	margin:0;
	padding:0;
}
.salImg {
	width: 100%;
	height:100%;

	
}

ul {
	list-style: none;
	margin:0 ;
	
	padding: 0;
}
listSale{
	margin:0;
}
.listSale li {
	float: left;
	margin: 0;
	padding: 0;
	padding: 0;
}

.listFooter {
	width: 250px;
	height: 70px;

	top:0;
	margin: 0;
	
}
.localSel{
	cursor:pointer;
}
</style>
</head>
<body>
	<div>
		<div class="localSel local" id="local">지역</div>
		<div class="localSel public" id="public">전국</div>
	</div>
	<section id="wrapper">


		<div id="listFrame">
			<ul class="listSale" id="list1">
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>

				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>

			</ul>
			<ul  class="listSale" id="list2">
			
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
			</ul>
			<ul  class="listSale" id="list3">
			
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
			</ul>
			<ul class="listSale" id="list4">
			
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
				<li>
				<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
					<div class="listFooter"></div>
				</li>
			</ul>
		</div>


	</section>
	
	<script>
		$("#public").click(function(){
			$(this).css({"border":"1px solid black"});
			$("#local").css({"border":"0"});
		});
		
			$("#local").click(function(){
				$(this).css({"border":"1px solid black"});
				$("#public").css({"border":"0"});
			});
	
	</script>
</body>
</html>