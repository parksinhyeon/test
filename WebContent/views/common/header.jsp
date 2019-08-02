<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	        <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
        <style>
        	*{
        		box-sizing: border-box;
        	}
            body{
                width: 1280px;
                height:800px;
             	margin:auto;
                font-family: 'Noto Sans KR', sans-serif;
       
               
            }
        
            header, nav, section, footer{
                box-sizing: border-box;
                display: block;
         /*         border: 1px solid black; */
            }
            section{
            	height:300px
            }
            header{
            	
                width: 100%;
                height:200px;
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
                width: 70%;
                height: 100%;
                float: left;
                font-size: 12px;

            }
            #headerSec2{
                width: 15%;
                height: 100%;
                float: left;
                text-align: right;
                font-size: 12px;
            }
            #mainlogo{
                width: 80%;
                height: 50%;
                margin:auto;
            }
      
         	
            #searchBox{
                width: 300px;
              	height:35px;
                border: 2px solid green;
                border-radius:5px;
                margin-left:0;
      		
           		
          
            }
            #searchBtn{
            	display:inline-block;
                width: 75px;
        		height:35px;
                border: 2px solid green;
                border-radius:5px;
                background-color: white;
           		font-size:15px;
           		line-height: 28.5px;
           		
              
            }
            .keyword{
				
      			
            	top:145px;
            	left:850px;
            	margin:auto;
            }
            .keyword>span{
            display:inline-block;
            	margin:0 5px 0 5px;
            	font-size: 16px;
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
                margin:0;
                position: relative;
            }
            nav>ul>li{
                float: left;
                list-style: none;
                width: 20%;
                line-height: 65px; 
                font-size: 18px;
                color: darkgreen;
                line-height: 60px;
                font-weight: bolder; 
              
                text-align: center;
                position: relative;
            }
          	nav>ul>li>span{
          		display: inline-block;
          		cursor: pointer;
          	}
           
           .categoryImg{
              position: absolute;
           		top:14px;
           		left:55px;
           	
           }    
            
            /*----------------------------------------------------------------  */
            
          
            }

            .menubar li ul a{
            display: inline;
            /* height: 50px; */
            color: black;
            font-size:12px;
            font-style:normal;
            margin:0px;
            padding:0px 10px 0px 15px;
            text-align: center;
            }

         .menubar li ul li:hover a{
            /* background: rgb(71,71,71); */
            border:0px;
             /* color:navy; */
            text-decoration:none;
            
        </style>
        

</head>
<body>
	<section>
	  <header>
        <article>
            <div id="articleSec"><img src="<%=request.getContextPath()%>/images/local.png" width="50%" height="80%"></img></div>
            <p id="articleP">어디에요</p>
        </article>
        <section id = headerSec1>
            <a href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/images/logo.png" id= "mainlogo"></a>
            <form id="searchFrm" name="searchFrm" method="GET" action="#">
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
        	</p>
        </section>
        <section id="headerSec2">
            <p data-notifications="00" class="button">알림</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a id="logout" href="#">로그인</a>
        </section>
    </header>
    <nav>
        <ul>
            <li><img src="<%=request.getContextPath()%>/images/list.png" class="categoryImg"></img>카테고리</li>
            <li><span>물건팔기</span></li>
            <li><span>커뮤니티</span></li>
            <li><span>마이페이지</span></li>
            <li><span>고객센터</span></li>
        </ul>
    </nav>
   </section>
	
</body>
</html>