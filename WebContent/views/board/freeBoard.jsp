<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>freeBoard</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="../../style/board/js/common.js"></script>
<link rel="stylesheet" href="../../style/board/css/freeBoard.css">


<style>

* { padding: 0; margin:0; color: #555; font-family:'Malgun Gothic';}

a{
    text-decoration: none;
    color: #555;
}
/* 전체 아우터 */
.table table{
    border-top: 3px solid #333;
    border-bottom: 1px solid green;
    border-collapse: collapse;
}

.table table tbody tr:hover{
    background-color: #cff09e;
}
.table td, 
.table th{
    font-size: 15px;
    border-top: 1px solid #b2b2b2;
    border-bottom: 1px solid #b2b2b2;
    text-align: center;
    padding: 12px 8px;
}
#select_btn{margin-top: 8px; height: 30px;}

button { cursor: pointer;}

.search-bar input, 
.search-bar select, 
.search-bar button{
    box-sizing: border-box;
    height: 100%; 
    outline: none;
    float: left;
    border-radius: 0px;
    border: 0px;
    padding:0;
}

.search-bar input{width:180px;}
.search-bar select{ font-size: 12px; text-align: center; width: 80px;}

.search-bar button{
    background-color:#84bd00;
    color: white;
    width: 80px;
}

#outer{ width: 1280px;
		}
#write_btn{ padding: 5px;}

/* 검색 버튼 박스*/
.board_top{
    position: relative;
}
.board_top #searchArea{
    position: absolute;
    right: 0;
    bottom: 0; 
 
} 
.board_top #searchArea > div { border:1px solid #84bd00; height:30px; box-sizing: border-box; overflow: hidden;}

/* 텝 버튼 */
.clearfix:after { content:""; clear:both; display:block;}
.tab_btn { margin-bottom: 20px; }
.tab_btn > div { float:left;}
.tab_btn button{ background-color: #fff; color: #333; border: 1px solid #ddd; height: 45px; line-height:45px; width: 100px; }
.tab_btn button.on { background-color: #84bd00; color:#fff; border: 1px solid #84bd00; transition: all 0.5s;}

/* 초록 글쓰기 버튼 */

/* 페이징 */
.paging { margin-top:15px; }
.paging ul { text-align:Center; }
.paging ul li { display:inline-block; margin-right:2px; vertical-align: top;  }
.paging ul li:last-child { margin:0;}
.paging ul li a { display:block; font-size:14px; color:#333; text-decoration:none; width:24px; height:24px; border:1px solid #ddd; box-sizing:border-box; -webkit-box-sizing: border-box; -moz-box-sizing: border-box; }
.paging ul li.on a,
.paging ul li a:hover { background:#84bd00; color:#fff; border:1px solid #84bd00;}

/* 


*/

.btn_group { text-align:right; padding:10px 0px 50px 0px;}
.btn_group button {color: #fff; background-color:#84bd00; border-color: #28a745; border:none; padding:10px 15px; }



/* 새로 추가*/
.table_group > div { display:none;}
.table_group > div:first-child { display:block;}

</style>
</head>


<body>
 	<%@ include file="../common/header.jsp" %> 

        <div id="outer">
            <form action="" method="POST" name="freeBoard">
                <div class="board_top">
                    <div class="tab_btn clearfix test">
                        <div class="switching_btn">
                            <button type="button" class="on">자유게시 판</button>
                        </div> 
                        <div class="switching_btn">
                            <button type="button">팁게시판</button>
                        </div>
                    </div>
                
                    <div id="searchArea">
                        <div class="search-bar clearfix">
                            <select name="search-bar">
                                <option value="">제목</option>
                                <option value="">작성자</option>
                                <option value="">내용</option>
                            </select>
                            <input type="text">
                            <button type="submit" name="searchBtn">검색</button>
                        </div>
                    </div>
                </div>
					
				<div class="table_group">
				
					<div class="table" id="free_board">
						<table  class="board" style="width: 100%"> 
							<colgroup>
							<col style="width:10%">
							<col style="width:10%">
							<col style="width:45%">
							<col style="width:15%">
							<col style="width:10%">
							<col style="width:10%">
							</colgroup>
							<thead>
								<th>번호</th>
								<th>작성자</th>
								<th>제목</th>
								<th>작성일</th>
								<th>조회수</th>
								<th>추천수</th>
							</thead>
							<tbody>
									<tr>
										<td>1</td>
										<td> 황성찬</td>
										<td><a href=""> 기분이 매우 좋습니다.</a></td>
										<td>2018-08-02</td>
										<td>30</td>
										<td>30</td>
									</tr>
									<td colspan="6" >조회결과가 없습니다.</td>
								</tr>
							</tbody>
						</table> 
					</div>

					<div class="table" id="tip_board">
						<table  class="board" style="width: 100%"> 
							<colgroup>
							<col style="width:10%">
							<col style="width:10%">
							<col style="width:45%">
							<col style="width:15%">
							<col style="width:10%">
							<col style="width:10%">
							</colgroup>
							<thead>
								<th>번호</th>
								<th>작성자</th>
								<th>제목</th>
								<th>작성일</th>
								<th>조회수</th>
								<th>추천수</th>
							</thead>
							<tbody>
									<tr>
										<td>1</td>
										<td> 황성찬</td>
										<td><a href=""> 날씨가 너무나 덥다</a></td>
										<td>2018-08-02</td>
										<td>30</td>
										<td>30</td>
									</tr>
									
									<td colspan="6" >조회결과가 없습니다.</td>
								</tr>
							</tbody>
						</table> 
					</div>

				</div>

                <div class="paging">
                    <ul>
                        <li class="prev"><a href="#;">&lt;</a></li>
        
                        <li class="on"><a href="">1</a></li>
                        <li><a href="">2</a></li>
                        <li><a href="">3</a></li>
                        <li><a href="">4</a></li>
                        <li><a href="">5</a></li>
        
                        <li class="next"><a href="#;">&gt;</a></li>
                    </ul>
                </div>
                <div class="btn_group">
                    <button type="button" class="btn btn-success">글쓰기</button>
                </div>        
            </form>
              	<%@ include file="../common/footer.jsp" %> 
				<!-- select 버튼 -->
				
</body>
</html>