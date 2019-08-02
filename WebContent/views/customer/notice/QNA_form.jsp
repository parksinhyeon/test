
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
	<style>
		#outer{/* 문의하기 틀 스타일*/
			border:1px solid red;
			width: 1280px;
            height:800px;
		}
		table{/* 문의하시 테이블 스타일 */
			border:1px solid black;
			text-align: center;
			border-collapse: collapse;
		}
		#tableArea, #detailArea {
			border:1px solid red;
			width:700px;
			height:750px;
			margin-left:auto;
			margin-right:auto;
		}
		/* .searchArea {
			width:650px;
			margin-left:auto;
			margin-right:auto;
		} */
		th{
			border-bottom:2px solid green;
			height: 30px;
		}
		td{
			border-bottom:2px solid black;
			height: 30px;
		}
		.wrap{
            /* border:1px solid black; */
            width: 680px;
            height:400px;
            overflow:auto;
        }
        .comment_btn{
        	width: 100px;
        	height: 40px;
        }
	</style>

</head>
<body>
	<div id="outer"><!-- 공지사항이 들어갈 틀 -->
		<br>
		
		<div id="tableArea"><!-- 공지사항 내용이 대한 제목들 -->
			<table align="center" id "listArea"><!-- 공지사항 테이블 -->
				<tr><!-- 테이블 길이 width : 700 -->
					<th width="100px" id=><h3>문의하기 |</h3></th>
					<th width="600px"><h3>문의하실 내용을 보내 주시면 최선을 다해 도움 드리겠습니다.
					</h3></th>
				</tr>
				<tr>
					<td>한미·한미일 내일 외교장관 회담…美, 한일갈등 중재 주목</td>
					<td>귀뚜라미</td>
					<td>2019.08.01</td>
					<td>2020</td>
				</tr>
				<tr>
					<td>한일갈등 중재 주목 2일 국무회의→4일 고위당정청…日 대응 시나리오</td>
					<td>곰돌이</td>
					<td>2019.07.30</td>
					<td>20</td>
				</tr>
				<tr>
					<td>118일만의 안건처리 국회 본회의…추경 처리 주목</td>
					<td>또끼</td>
					<td>2019.07.29</td>
					<td>24</td>
				</tr>
				<!-- <tr>
					<td colspan="4">공지사항이 없습니다.</td>
				</tr> -->	
			</table>
		</div>
		<br>
	</div>						
</body>
</html>