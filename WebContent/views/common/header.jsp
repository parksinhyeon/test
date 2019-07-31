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
            <li><a href="#">고객센터</a></li>
        </ul>
    </nav>
   
	
</body>
</html>