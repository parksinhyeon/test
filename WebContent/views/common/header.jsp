
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	        <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
        <style>
        	
            body{
                width: 1280px;
                height:800px;
                font-family: 'Noto Sans KR', sans-serif;
                margin: auto;
            }
        
            header, nav, section, footer{
                box-sizing: border-box;
                display: block;
   /*               border: 1px solid black;  */
            }
            header{
            	
                width: 100%;
                height: 15%;
                text-align: center;
            }
            header article{
                float: left;
                width: 15%;
                height: 100%;
                font-size: 12px;
            }
            #articleSec{
                width: 100%;
                height: 80%;
            }
            #articleP{
                width: 100%;
                height: 20%;
            }
            #headerSec1{
                width: 60%;
                height: 100%;
                float: left;
                font-size: 12px;
            }
            #headerSec2{
                width: 25%;
                height: 100%;
                float: left;
                text-align: right;
                font-size: 12px;
            }
            #mainlogo{
                width: 80%;
                height: 50%;
                margin-top: 5px;
                margin-bottom: 1px;
            }
            #searchBox{
                width: 40%;
              
                border: 1px solid green;
                margin-top: 10px;
            }
            #searchBtn{
                width: 10%;
        
                border: 1px solid green;
                background-color: white;
            }
            #searchBtn:hover{
                cursor: pointer;
                background-color: yellowgreen;
            }
            #headerSec1 a{
                font-size: 12px;
            }
            #headerSec2 p{
                display: inline;
                position: relative;
                color: darkgreen;
            }
            [data-notifications]:after {
                content: attr(data-notifications);
                position: absolute;
                background: red;
                border-radius: 50%;
                display: inline-block;
                padding: 0.15em;
                color: #f2f2f2;
                top: -1.5px;
            }
            #logout{
                text-decoration: none;
                color: darkgreen;
            }
            nav{
                color: darkgreen;
                font-family: 'Noto Sans KR', sans-serif;
                width: 100%;
                height: 10%;
                clear: both;
                position: relative;
            }
            nav>ul>li{
                float: left;
                list-style: none;
                width: 20%;
                line-height: 45px;  
            }
            nav>ul>li>a{
                text-decoration: none;
                font-size: 13px;
                color: darkgreen;
                line-height: 60px;
            }
            #listimg{
                width: 35px;
                height: 35px;
                margin-top: 5px;
            }         
            
        </style>
        

</head>
<body>

	  <header>
        <article>
            <div id="articleSec"><img src="<%=request.getContextPath()%>/images/local.png" width="50%" height="80%"></img></div>
            <p id="articleP">어디에요</p>
        </article>
        <section id = headerSec1>
            <img src="<%=request.getContextPath()%>/images/logo.png" id= "mainlogo">
            <form id="searchFrm" name="searchFrm" method="GET" action="#">
                <input type="text" id = "searchBox">
                <input type="submit" id="searchBtn" value="검색"></input>
            </form>
            <a href="#">keywd</a>&nbsp;<a href="#">keywd</a>&nbsp;<a href="#">keywd</a>&nbsp;<a href="#">keywd</a>
        </section>
        <section id="headerSec2">
            <p data-notifications="00" class="button" href="#">알림</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a id="logout" href="#">로그아웃</a>
        </section>
    </header>
    <nav>
        <ul>
            <li><img src="list.png" id="listimg"></img></li>
           
            <li><a href="#">중고거래</a></li>
            <li><a href="#">커뮤니티</a></li>
            <li><a href="#">마이페이지</a></li>
            <li><a href="#" onclick="notice_go">고객센터</a></li>
        </ul>
    </nav>
   <script>
   	function notice_go(){
   		location.href="<%=request.getContextPath()%>/ServiceCenter_Go";
   	}
   </script>
	
</body>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.model.vo.Member"%>
<%

String msg =(String)session.getAttribute("msg");	
Member loginUser = (Member)session.getAttribute("loginUser");

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
	
	<%if(msg!=null){ %>
	<script>
		alert("<%=msg%>");
	</script>
	<%
	session.removeAttribute("msg");
	}
	
	%>
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