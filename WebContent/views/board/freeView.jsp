<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>freeView</title>
</head>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">-->
<link rel="stylesheet" href="../../style/board/css/boardView.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="js/freeView.js"></script>
<body>
    <div id="free_view_outer"> 
        <div class="title">
            <span>자유게시판</span>
        </div>
        <div id="board_outer">
            <form action="" method="POST">
            <div class="board_title"> 
                <p class="board_title_left">게시물 제목 나오는 곳</p>
                <div class="board_title_right">
                    <div class="alert_outer">
                        <a href="#">
                            <img id="img_alert" src="img/warning.png" alt="">
                        </a>
                    </div>                      
                    <div class="msg_outer">
                        <a href="#">
                            <img id="img_msg" src="img/138701.png" alt="">
                        </a>
                    </div>
                    <p>작성자 | 2019.08.08</p>             
                </div>
            </div>

            <div class="board_content">
                <p id="tip_p"> &nbsp;게시판 내용이 들어가는 곳</p>
            </div>


            <!-- 댓글란 전체 아우터 -->
            <div class="board_reply">
                <div class="comment_outer"></div>

                    <!-- 입력된 댓글 -->
                    <div class="board_reply_content">
                        <div>
                            <p class="nameBox"><b>김이름</b><span>2019.08.08 19:31 </span> <a href="#"><b>신고</b></a> </p>
                            <div class="text reply_text">이곳은 댓글 내용</div>
                        </div>
                    </div>
                    <div class="upload_btn_outer">
                        <textarea name="boardReply" id="comment_area">댓글 쓰는곳</textarea> 
                        <a id="upload_btn" href="#">등록</a>
                    </div>
                </div>
            </div> 
            <!-- 수정 삭제 목록 버튼 -->
            <div class="board_bottom">
                <a href="#">수정</a>
                <a href="#">삭제</a> 
                <button>목록</button>
            </div>
        </form>
        </div>
    </div>
</body>
</html>