<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>freeBoard</title>
</head>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">-->
<link rel="stylesheet" href="../../style/board/css/freeBoard.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="../../style/board/js/common.js"></script>

<style>


</style>
<body>
        <div id="outer">
            <form action="" method="GET" >
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
				<!-- select 버튼 -->
				
</body>
</html>