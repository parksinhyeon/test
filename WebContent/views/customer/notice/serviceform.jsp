<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
    <nav>
        <ul>
            <li><img src="list.png" id="listimg"></img></li>
           
            <li><a href="#">FAQ</a></li>
            <li><a href="#">문의하기</a></li>
            <li><a href="#">이용약관</a></li>
            <li><a href="#" onclick="notice_go">공지사항</a></li>
        </ul>
    </nav>
   <script>
   function notice_go(){
  		location.href="<%=request.getContextPath()%>/ServiceCenter_Go";
  	}
   function notice_go(){
  		location.href="<%=request.getContextPath()%>/ServiceCenter_Go";
  	}
   function notice_go(){
  		location.href="<%=request.getContextPath()%>/ServiceCenter_Go";
  	}
   	function notice_go(){
   		location.href="<%=request.getContextPath()%>/ServiceCenter_Go";
   	}
   </script>
</body>
</html>