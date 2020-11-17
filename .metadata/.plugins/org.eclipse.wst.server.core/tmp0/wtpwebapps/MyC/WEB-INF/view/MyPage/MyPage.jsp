<%@page import="poly.util.CmmUtil"%>
<%@page import="poly.dto.ClosetInfoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   List<ClosetInfoDTO> rList = (List<ClosetInfoDTO>) request.getAttribute("rList");
    String user_no = CmmUtil.nvl((String)session.getAttribute("user_no"));
%>
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
<!---->
</head>
<body>
   <section id="container"
      style="background: linear-gradient(to right, rgba(39, 70, 133, 0.8) 0%, rgba(61, 179, 197, 0.8) 100%);">
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
                  <a href="/user/logOut.do">로그아웃</a>
               </div>
               <div>
                  <a href="/MyPage/MyPage.do">마이페이지</a>
               </div>
            </div>
         </section>
      </header>

      <%
         for (ClosetInfoDTO i : rList) {
                              if(user_no.equals(i.getUser_no()) || i.getUser_no().equals("0") ){
      %>
      <div id="main_container">

         <section class="b_inner">

            <div class="hori_cont">
               <div class="profile_wrap">
                  <div class="profile_img">
                     <%
                        for (ClosetInfoDTO k : rList) {
                                                                       if (CmmUtil.nvl(k.getMy_rep()).equals("1")) {
                     %>
                     <a href="/MyPage/imgDetail.do?no=<%=k.getClo_no()%>"> <img
                        src="/fileFolder/<%=k.getFile_name()%>" /></a>
                     <%
                        break; }}
                     %>
                  </div>
               </div>

               <div class="detail">
                  <div class="top">
                     <div class="email"><%=user_no%></div>
                  </div>
                  <%
                   int count=0;
                                                  for (ClosetInfoDTO k : rList) {
                                                       if (user_no == k.getUser_no()) {
                                                       count++;
                                                       }}
                %>
                  <ul class="middle">
                     <li><span>게시물</span><%=count%></li>
                     <li><span>팔로워</span><%=count%></li>
                     <li><span>팔로우</span><%=count%></li>
                  </ul>
                  <span>
                     <div class="profile_state">
                        <%=i.getMy_content()%>
                     </div>
                  </span>
                  <p style="padding-left: 15%; padding-right: 15%;">
                     <span><a href="/MyPage/FileUPdate.do"
                        style="text-decoration: none; color: black; padding: 0 10px 0 10px;">옷
                           등록</a></span> <span><a href="/MyPage/FileUPdate.do"
                        style="text-decoration: none; color: black; padding: 0 10px 0 10px;">옷
                           수정</a></span> <span><a href="/MyPage/FileUPdate.do"
                        style="text-decoration: none; color: black; padding: 0 10px 0 10px;">옷
                           리뷰</a></span> <span><a href="/MyPage/StateUPdate.do"
                        style="text-decoration: none; color: black; padding: 0 10px 0 10px;">상태글수정</a></span>
                  </p>

               </div>
            </div>
            <div class="mylist_contents contents_container active">
               <%
                  }
                                                            break;
                                                         }

                                                            for (ClosetInfoDTO e : rList) {
                                                               if(user_no.equals(e.getUser_no()) || e.getUser_no().equals("0")){
                                                                  if (CmmUtil.nvl(e.getClo_no()).equals("0")) {
                                                                  
                                                                     } else {
               %>
               <div class="pic">
                  <a href="/MyPage/imgDetail.do?no=<%=e.getClo_no()%>"> <img
                     src="/fileFolder/<%=e.getFile_name()%>" alt="이미지가 없습니다." /></a>
               </div>
               <%}}}%>
            </div>
         </section>
      </div>


   </section>
   <!--<script src="js/insta.js"></script>-->
   <script src="/resources/js/profile.js"></script>
   <script>
      
   </script>

</body>
</html>