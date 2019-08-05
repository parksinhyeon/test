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


/* -----------------------지역선택--------------------------- */

     .menubar{
            margin:0px;
            padding:0px;
            font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans", "Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica, sans-serif;
            font-size:14px;
            font-weight:bolder;
            height:50px;
            }

            .highList{
            /* background: rgb(109,109,109); */
             width:1280px;
            height:100%;
            list-style:none;
            margin-left:139px;
            padding:0;
      
            }

           
			.localSel{
				float:left;
	            padding:0px;
	            width:150px;
			}
            .menubar li a{
            /* background: rgb(109,109,109); */
            color:darkgreen;
            display:block;
            font-weight:normal;
            line-height:50px;
            margin:0px;
        
            text-align:center;
            text-decoration:none;
            }
			
            .menubar li a:hover, .menubar ul li:hover a{
            /* border: 1px solid darkgreen; */
            /* color: navy; */
            text-decoration:none;
            }

            .localList{
           
            background: whitesmoke;
            display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
            width:700px;
            opacity: 0.8;
            position: absolute;

            }

            .menubar li:hover ul{
            display: inline; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
            }

            .menubar li li {
            /* background: rgb(109,109,109); */
            display: inline;
            float:none;
            margin:0px;
            padding:0px;
            /* width:200px; */

            }

            .menubar li:hover li a{
            background:none;
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
            }


</style>
</head>
<body>
 <div class= menubar>
        <ul class="highList">
            <li><a href="#" class="localSel local" id="local">우리동네</a></li>
            <li><a href="#" class="localSel public" id="public">전국</a>
                <ul class="localList">
                    <li><a href="#">서울시</a></li>
                    <li><a href="#">경기도</a></li>
                    <li><a href="#">인천광역시</a></li>
                    <li><a href="#">강원도</a></li>
                    <li><a href="#">충청도</a></li>
                    <li><a href="#">전라도</a></li>
                    <li><a href="#">경상도</a></li>
                    <li><a href="#">제주도</a></li>
                </ul>
            </li>
        </ul>
    </div>

	<section id="wrapper">


		<div id="listFrame">
		<%for(int i=0; i<4; i++){ %>
			<ul class="listSale" id="list1">
				<%for(int j=0; j<4; j++){%>
					
					<li>
					
					<div class="imgFrame"><img src="images/river1.png" class="salImg"></div>
						<div class="listFooter">
							<div>10년된 세탁기<%=j+(4*i)+1 %></div>
							<div>10000원</div>
						</div>
					</li>
					
					
				<%}%>
			</ul>
		<%}%>
			
		</div>


	</section>
	
	<script>
		
	</script>
</body>
</html>