<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	    <link rel="stylesheet" href="<%=request.getContextPath()%>/style/common/header.css" type="text/css">


</head>
<body>
	<section>
	  <header>
        <article>
            <div id="articleSec">
            <img src="<%=request.getContextPath()%>/images/local.png" width="50%" height="80%"></img>
            <span class="deallocal l1">서울특별시</span>
            <span class="deallocal l2">종로구</span>
            </div>
          
        </article>
        <section id = headerSec1>
            <a href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/images/logo.png" id= "mainlogo"></a>
            <form id="searchFrm" name="searchFrm" method="GET">
            	<div class="searchWrapper">
	                <input type="text" id = "searchBox">
	                <span id="searchBtn">검색</span>
	                <!-- <input type="submit" id="searchBtn" value="검색"> -->
            	</div>
               
            </form>
        	<p class=keyword>
	        	<span> <a href="#"> 세탁기 </a> </span>	
	        	<span> <a href="#"> 선풍기  </a></span>	
	        	<span> <a href="#"> TV </a></span>	
	        	<span> <a href="#"> 건조기 </a> </span>
	        	<span> <a href="#"> 전자레인지 </a> </span>
	        	<span> <a href="#"> 에어프라이어</a> </span>
	        	
        	</p>
        </section>
        <section id="headerSec2">
            <p data-notifications="00" class="button">알림</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a id="logout" href="#">로그인</a>
        </section>
    </header>


   





   <hr>
    <nav class="menu">


        <ul>
            <li id="category">
            <div><img src="<%=request.getContextPath()%>/images/list.png" class="categoryImg"></div><div>카테고리</div></li>
            <li id="sale">물건팔기</li>
            <li id="communtiy">커뮤니티</li>
            <li id="mypage">마이페이지</li>
            <li id="customer">고객센터</li>
        </ul>
    </nav>
    <hr>
   </section>
	
	
	<script>
		<%-- $("#mypage").click(function(){
			location.href="<%=request.getContextPath()%>/views/mypage/pwdInputForm.jsp";	
		}); --%>
	</script>
</body>
</html>