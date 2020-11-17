<%@page import="poly.util.CmmUtil"%>
<%@page import="poly.dto.ClosetInfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
       ClosetInfoDTO rDTO = (ClosetInfoDTO) request.getAttribute("rDTO");
    %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="WebContent/css/main.css">
<meta charset="UTF-8">
<title><%=CmmUtil.nvl(rDTO.getPost_title()) %></title>
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
                  <a href="/user/mainPage.do">메인페이지</a>
               </div>
               <div>
                  <a href="">follow</a>
               </div>
               <div>
                  <a href="/MyPage/MyPage.do">마이페이지</a>
               </div>
            </div>
         </section>
      </header>
<%-- <div style="width: 800px">
      <h4><%=CmmUtil.nvl(rDTO.getPost_title()) %></h4>
      <hr>
      <div style="text-align: right;">
         작성자 :
         <%=CmmUtil.nvl(rDTO.getEmail())%></div>
      <div>
         <p><%=CmmUtil.nvl(rDTO.getPost_content())%></p>
      </div>
      <hr>
      <div style="float: left;">
         <button onclick="location.href='/MyPage/MyPage.do'">뒤로</button>
      </div>
      <div style="float: right;">
         <button onclick="location.href='/MyPage/Galedit.do?no=<%=rDTO.getClo_no()%>'">편집</button>
      </div>
      <div style="float: right;">
         <button onclick="confirmDelete();">삭제</button>
      </div>
   </div>
   <script type="text/javascript">
   function confirmDelete(){
   if(confirm("삭제하시겠습니까?")){
      location.href ="/MyPage/MyPage.do?no=<%=rDTO.getClo_no()%>";
      }
   }
   </script> --%>
</body>
</html>