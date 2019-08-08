<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=032cefe9c29d59485ed638e69d2033e6&libraries=services,clusterer"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=032cefe9c29d59485ed638e69d2033e6"></script>

<style>
* {
	box-sizing: border-box;
	font-family: 'Malgun Gothic';
	font-size: 12px;
}

.outer {
	width: 1280px;
	height: 800px;
	margin: auto;
}

.imgarea {
	width: 50%;
	height: 100%;
	float: left;
	/* border: solid black; */
	position: relative;
	/*  border-right: 0.5px solid darkgreen; */
}

.frmarea {
	width: 50%;
	height: 100%;
	float: left;
	/* border: solid black; */
	margin: auto;
}

#inputimg {
	height: 9%;
	width: 99%;
	margin-bottom: 1px;
	border: 0.5px solid darkgreen;
}

#bigimg {
	height: 50%;
	width: 99%;
	border: 0.5px solid darkgray;
	margin-bottom: 5px;
}

.simgarea {
	height: 15%;
	width: 100%;
}

.simgarea div {
	width: 24%;
	height: 99%;
	border: 0.5px solid darkgray;
	margin-right: 6px;
	float: left;
}

#alertmsg {
	height: 20%;
	border: 0.5px solid darkgreen;
	margin: 5px;
}

#alertmsg>p {
	padding: 5px;
}

#dealInsertFrm {
	width: 100%;
	height: 100%;
	padding: 0;
}

#tablearea {
	width: 100%;
	height: 90%;
	margin-left: 10px;
}

table {
	/* border: 1px solid black; */
	width: 100%;
	height: 80%;
	margin-top: 10px;
}

.title {
	width: 12%;
	/* border: 1px solid */
}

#cancel, #submit {
	margin: 15px;
}
</style>

</head>
<body>
<%@ include file="../../views/common/header.jsp"%>
<div class="outer">
    <div class="imgarea">
        <br>
        <input type="file" id="inputimg">
        <div id="bigimg">
            <img src="" alt="">
        </div>
        <div class="simgarea">
            <div><img src="" alt=""></div>
            <div><img src="" alt=""></div>
            <div><img src="" alt=""></div>
            <div><img src="" alt=""></div>
        </div>
        <div id="alertmsg">
            <p>
                 * 상품 이미지는 640x640에 최적화 되어 있습니다. <br>
                - 이미지는 상품등록 시 정사각형으로 짤려서 등록됩니다. <br>
                - 확대하기를 누를 경우 원본이미지를 확인할 수 있습니다. <br>
                - 큰 이미지일경우 이미지가 깨지는 경우가 발생할 수 있습니다. <br>
            </p>
        </div>

    </div>
    <div class="frmarea">
            <div id ="tablearea"> 
                <h2 align="left" style="font-size: 20px">&nbsp;물건등록</h2>
                <hr>
                <table>
                    <tr>
                        <td class="title">카테고리</td>
                        <td>
                            <select id="category1">
                                <option value="01">생활가전</option>
                                <option value="02">주방가전</option>
                                <option value="03">IT가전</option>
                                <option value="04">땡땡가전</option>
                                <option value="05">땡땡가전</option>
                            </select>                   
                            <select id="category2">
                                <option value="">컴퓨터</option>
                                <option value="">땡땡</option>
                                <option value="">땡땡</option>
                                <option value="">땡땡</option>
                                 <option value="">땡땡</option>
                            </select>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="title">제목</td>
                        <td><input type="text" id="title" style="width: 70%"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="title">거래방식</td>
                        <td><label for="dealtype">안전거래</label><input type="radio" id="dealtype" value="안전거래">
                        <label for="dealtype">직거래</label><input type="radio" id="dealtype" value="직거래"></td>
                    </tr>
                    <tr>
                        <td class="title">금액</td>
                        <td><input type="text" id="price" style="width: 30%">&nbsp;원</td>
                    </tr>
                    <tr>
                        <td class="title">수량</td>
                        <td><input type="text" id="count" style="width: 30%">&nbsp;개</td>
                    </tr>
                    <tr>
                        <td class="title">거래위치</td>
                        <td>
                        <input type="text" id="dealLocal" value="" size="70"><input type="button" value="위치검색" onclick="goPopup()" > <!--  -->         
                           <div id = map style ="width:400px; height:250px;"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="title">상세내용</td>
                        <td>
                            <textarea  id="contentdetail" cols="60" rows="10" maxlength="200" style="resize: none" placeholder="당신의 물건을 소개해주세요. 최대 200자"></textarea>
                        </td>
                        <td></td>
                    </tr>                 
                    <tr>
                        <td></td>
                        <td><button type="reset" id="cacel">등록취소</button>&nbsp;<button type="submit" id="submit">물건등록</button></td>       
                    </tr>
                </table>
           </div>
    </div>
</div>
<%@ include file="../../views/common/footer.jsp"%>
<script>
var address=document.getElementById("dealLocal");
var mapContainer = document.getElementById("map");
var coordXY   = document.getElementById("coordXY");
var mapOption;
var map;
var x,y  = "";

if (address.value=="") {

 mapOption = {
  center: new kakao.maps.LatLng(37.568168, 126.983014), // 임의의 지도 중심좌표 , 제주도 다음본사로 잡아봤다.
  level: 4// 지도의 확대 레벨

 };
}

// 지도 생성


map = new kakao.maps.Map(mapContainer, mapOption);

function addressChk(local,detail) {
map = new kakao.maps.Map(mapContainer, mapOption);
 var gap = local; // 주소검색어
 if (gap=="") {
  alert("주소 검색어를 입력해 주십시오.");
  address.focus();
  return;
 }
 
 
 // 주소-좌표 변환 객체를 생성
 var geocoder = new kakao.maps.services.Geocoder();

 // 주소로 좌표를 검색
 geocoder.addressSearch(gap, function(result, status) {
  
  // 정상적으로 검색이 완료됐으면,
  if (status == kakao.maps.services.Status.OK) {
   
	var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

   y = result[0].x;
   x = result[0].y;

   // 결과값으로 받은 위치를 마커로 표시
   
   var marker = new kakao.maps.Marker({
    map: map,
    position: coords
   });


   // 인포윈도우로 장소에 대한 설명표시
   if(detail!=""){
	    var infowindow = new kakao.maps.InfoWindow({
	    content: '<div style="width:150px;text-align:center;padding:5px 0;">'+detail+'</div>'
	   });
	
	   infowindow.open(map,marker); 
   }
   
   // 지도 중심을 이동
   map.setCenter(coords);

  /*  coordXY.innerHTML = "<br>X좌표 : " + x + "<br><br>Y좌표 : " + y; */
  }
 });
}


</script>
</body>
</html>