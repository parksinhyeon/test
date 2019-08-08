<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.model.vo.Member"%>
<%

String loginMsg =(String)request.getAttribute("msg");
String joinMsg =(String)session.getAttribute("msg");
Member loginUser = (Member)session.getAttribute("loginUser");
String encPwd =(String)request.getAttribute("encPwd"); 
%>
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
	
	
	<%if(loginMsg!=null){ %>
	<script>
		alert("<%=loginMsg%>");
	</script>
	<%
	session.removeAttribute("msg");
	}
	%>
	
	<%if(joinMsg!=null){ %>
	<script>
		alert("<%=joinMsg%>");
	</script>
	<%
		joinMsg=null;
	}
	%>
	
	
	<%if(encPwd!=null){ 
		if(encPwd.equals(loginUser.getPwd())){%>
		<script> 
			location.href="<%=request.getContextPath()%>/views/mypage/memberInfo.jsp";
		</script>
		<%}else{ %>
		
		<script>
			alert("비밀번호가 틀렸습니다.");
			location.href="<%=request.getContextPath()%>/views/mypage/pwdInputForm.jsp";
		</script>
		
	<%}
		encPwd=null;
		}%>
	
	
	<section>
	  <header>
        <article>
            <div id="articleSec">
            <%if(loginUser!=null){ %>
            <img src="<%=request.getContextPath()%>/images/local.png" width="50%" height="80%"></img>
	             <%if(loginUser.getAddress()!=null){ %>
	            <div>
	            <span class="deallocal l1">서울특별시</span>
	            <span class="deallocal l2">종로구</span>
	            </div>
	            <%}else{%>
	            <div>주소를 등록해주세요</div>
	            <%}%>
            <%}%>
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
        	
        		
	            <span data-notifications="00" id="messege">쪽지</span>
	            <span data-notifications="00" id="notice">알림</span>
	            
	        	<% if(loginUser!=null){%>
	            <span id="logout" id="logout">로그아웃</span>
	      		<%}else{ %>
	    		  <span id="login" id="login">로그인</span>
	       		<%} %> 
        	
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
		$("#mypage").click(function(){
			location.href="<%=request.getContextPath()%>/views/mypage/pwdInputForm.jsp";	
		});
	</script>
</body>
</html>