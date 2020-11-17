<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
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
</head>
</head>
<body>
	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('/resources/images/img-01.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">

				<div class="login100-form-avatar">
					<img src="/resources/images/avatar-01.jpg" alt="AVATAR">
				</div>

				<span class="login100-form-title p-t-20 p-b-45"> MY'C 로그인 페이지
					입니다. </span>
				<form action="/user/userLoginProc.do" method="post">
					<div class="wrap-input100 validate-input m-b-10"
						data-validate="Username is required">
						<input class="input100" type="email" name="email" placeholder="이메일">
						<span class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10"
						data-validate="Password is required">
						<input class="input100" type="password" name="password"
							placeholder="비밀번호"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"></i>
						</span>
					</div>

					<div class="container-login100-form-btn p-t-10">
						<button type="submit" class="login100-form-btn">Login</button>
					</div>
				</form>
				<div class="text-center w-full p-t-25 p-b-230">
					<a href="/user/userSerchForm.do" class="txt1">
						아이디/비밀번호 찾기 </a>
				</div>

				<div class="text-center w-full">
					<a class="txt1" href="/user/userRegForm.do">
						회원가입하기 <i class="fa fa-long-arrow-right"></i>
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

</body>