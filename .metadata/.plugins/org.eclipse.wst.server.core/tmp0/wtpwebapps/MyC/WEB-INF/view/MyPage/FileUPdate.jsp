<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/profile.css">
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="/resources/css/detail-page.css">
<link rel="stylesheet" href="/resources/css/new_post.css">
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/style.css">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <section id="container">
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


      <div id="main_container">
         <div class="post_form_container">
            <form action="/MyPage/FilePost.do" method="post" enctype="multipart/form-data" class="post_form" >
               <div class="title">이미지 등록</div>
               <div class="preview">
                  <div class="upload">
                     <div class="post_btn">
                        <label for="id_photo">
                           <div class="plus_icon">
                              <span></span> <span></span>
                           </div>
                        </label>
                        <p>새로운 이미지 추가</p>
                        <canvas id="imageCanvas"></canvas>
                     </div>
                  </div>
               </div>
               <p>
                  <input type="text" name="gal_name"
                     style="border: 1px solid #e6e6e6; box-sizing: border-box; width: 385px; height: 30px;"
                     placeholder="제목을 입력해주세요">
               </p>
               <p>
                  <input type="file" name="file_content" id="id_photo"
                     required="required">
               </p>
               <p>
                  <textarea name="gal_content" id="text_field" cols="50" rows="5"
                     placeholder="내용을 입력해주세요"></textarea>

               </p>
               <div style="text-align: center;">프로필 사진</div>
               <div
                  style="border: 1px solid #e6e6e6; box-sizing: border-box; text-align: center;">
                  예<input type="radio" name="gal_rep" value="1" /> 아니오<input
                     type="radio" name="gal_rep" value="2" />
               </div>
               <input class="submit_btn" type="submit" value="등록">
            </form>
         </div>
      </div>
   </section>
   <script>
      var fileInput = document.querySelector("#id_photo"), button = document
            .querySelector(".input-file-trigger"), the_return = document
            .querySelector(".file-return");

      // Show image
      fileInput.addEventListener('change', handleImage, false);
      var canvas = document.getElementById('imageCanvas');
      var ctx = canvas.getContext('2d');

      function handleImage(e) {
         var reader = new FileReader();
         reader.onload = function(event) {
            var img = new Image();
            // var imgWidth =
            img.onload = function() {
               canvas.width = 300;
               canvas.height = 300;
               ctx.drawImage(img, 0, 0, 300, 300);
            };
            img.src = event.target.result;
            // img.width = img.width*0.5
            // canvas.height = img.height;
         };
         reader.readAsDataURL(e.target.files[0]);
      }
   </script>
</body>
</html>