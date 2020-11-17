<%@page import="java.util.List"%>
<%@page import="poly.dto.ClosetInfoDTO"%>
<%@page import="poly.util.CmmUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String email = CmmUtil.nvl((String)session.getAttribute("email"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>My'C 회원정보수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- 경로 앞에 / 붙히기 무조건 -->
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="/resources/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="/resources/css/util.css">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<!--===============================================================================================-->

<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="/resources/assets/img/favicon.png" rel="icon">
<link href="/resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">
	
	<link rel="stylesheet" href="/resources/css/profile.css">
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="/resources/css/detail-page.css">
<link rel="stylesheet" href="/resources/css/new_post.css">
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/style.css">


<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/icofont/icofont.min.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/aos/aos.css" rel="stylesheet">
<link
	href="/resources/assets/vendor/line-awesome/css/line-awesome.min.css"
	rel="stylesheet">
<link
	href="/resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/resources/assets/css/style.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Mobile Menu ======= -->
  <div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close mt-3">
        <span class="icofont-close js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div>

  <!-- ======= Header ======= -->
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
						<a href="/user/cngeUserInfo.do">회원정보</a>
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
		<div class="limiter">
		<div class="container-login100" style="background-image: url('/resources/images/img-01.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
					<span class="login100-form-title p-t-20 p-b-45">
						~님의 정보수정입니다.
					</span>
					
<form name="f" method="post" action="insertUserInfo.do" onsubmit="return doRegUserCheck(this);">
					
				   <div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						<input class="input100" type="text" name="user_name" placeholder="이름">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>
					
				   <div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="비밀번호">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>
					
                  <div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="password" name="password2" placeholder="비밀번호 확인">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>


					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="email" name="email" id="email" placeholder="이메일">
						<input type ="button" type="button" class="btn btn-info" id="emailBtn" value="인증문자발송"> 
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="text" name="emailCheck" placeholder="인증번호">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
						<button type="button" class="btn btn-info" id="emailAuth"> 이메일 인증</button>
					</div>
					<input type="hidden" path="random" id="radom" value="${random }"/>
					
					
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="text" name="sex" placeholder="성별">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="text" name="user_an" placeholder="닉네임">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>



					<div class="container-login100-form-btn p-t-10">
						<button type="submit" class="login100-form-btn">
							완료
						</button>
					</div>
</form>
					<div class="container-login100-form-btn p-t-10">
						<a href="/user/userLogin.do" class="login100-form-btn"> <!-- href 앞에 /와 끝에 .do를 붙혀라 -->
							취소
						</a>
					</div>


			</div>
		</div>
	</div>

	<!--===============================================================================================-->
	<script src="/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/vendor/bootstrap/js/popper.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="/resources/js/main.js"></script>
</body>
</html>
		
		
		