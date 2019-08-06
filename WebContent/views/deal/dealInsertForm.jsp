<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <style>
        
        *{
            box-sizing: border-box;
            font-family:'Malgun Gothic';
            font-size: 12px;
        }
        .outer{
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
            border-right: 0.5px solid darkgreen;
        }
        .frmarea{
            width: 50%;
            height: 100%;
            float: left;
            /* border: solid black; */
            margin: auto;

        }
        #inputimg{
            height: 9%;
            width: 99%;
            margin-bottom: 1px;
            border: 0.5px solid darkgreen;
        }

        #bigimg{
            height: 50%;
            width: 99%;
            border: 0.5px solid darkgray;
            margin-bottom: 5px; 
        }
        .simgarea{
            height: 15%;
            width: 100%;
       }
       .simgarea div{
           width: 24%;
           height: 99%;
           border: 0.5px solid darkgray; 
           margin-right: 6px;
           float:left;
       }
        #alertmsg{
            height: 20%;
            border: 0.5px solid darkgreen;
            margin: 5px;
        }
        #alertmsg>p{
            padding: 5px;
        }
        #dealInsertFrm{
            width: 100%;
            height: 100%;
            
            padding: 0;
            
        }
        #tablearea{
            width: 100%;
            height: 90%;
            margin-left: 10px;
        }
        table{
            /* border: 1px solid black; */
            width: 100%;
            height: 80%;
            margin-top: 10px; 
        }
        .title{
            width: 12%;
            /* border: 1px solid */
        }
        #cancel, #submit{
            margin: 15px;
        }       
    </style>
    </head>
<body>

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
                        <td><input type="text" id="price" style="width: 70%">&nbsp;원</td>
                    </tr>
                    <tr>
                        <td class="title">수량</td>
                        <td><input type="text" id="count" style="width: 70%">&nbsp;개</td>
                    </tr>
                    <tr>
                        <td class="title">거래위치</td>
                        <td><input type="button" value="위치찾기" id="findlocation">
                        <input type="text" style="width: 60%" value="어디어디어디"></td>
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
</body>
</html>