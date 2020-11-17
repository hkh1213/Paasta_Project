<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="WebContent/css/main.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header id="header">
         <section class="h_inner">

            <h1 class="logo">
               <!-- 메인 홈페이지로 이동 -->
               <a href="/user/mainPage.do"> <!-- 사진 -->
                  <div class="sprite_MyC_icon"></div>
                  <div>
                     <div class="sprite_write_logo"></div>
                  </div>
               </a>
            </h1>

            <div class="search_field">
               <div class="fake_field">
                  <span class=sprite_small_search_icon></span>
               </div>
               <div>
                  <input type="text" placeholder="검색" tabindex="0">
               </div>

            </div>

            <!-- 기타 이동 로고-->
            <div class="right_icons" style="width: 25%;">
               <div>
                  <a href="/user/mainPage.do">회원정보</a>
               </div>
               <div>
                  <a href="/user/userLogOut.do">로그아웃</a>
               </div>
               <div>
                  <a href="/MyPage/MyPage.do">옷장</a>
               </div>
            </div>
         </section>
      </header>
<form action="/MyPage/StatePost.do" method="post" >
<div>상태글내용</div>
<div><textarea name="gal_content" style="height:300px;width : 300px"></textarea></div>
<div><input type="submit" value="제출"></div>
</form>
</body>
</html>