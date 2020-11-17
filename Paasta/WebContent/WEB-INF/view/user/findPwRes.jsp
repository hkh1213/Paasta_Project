<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>
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
<script type="text/javascript">
    // 이메일 인증 서비스 만들기
	// 회원가입 유효성 체크 
	function doSerchUserCheck(f) {

		if (f.random.value == "") {
			alert("인증번호를 입력하세요.");
			f.random.focus();
			return false;
		}

		if (f.newpw.value == "") {
			alert("비밀번호을 입력하세요.");
			f.newpw.focus();
			return false;
		}

		if (f.checkpw.value == "") {
			alert("비밀번호확인을 입력하세요.");
			f.checkpw.focus();
			return false;
		}
		
		if(f.checkpw.value != f.newpw.value){
			alert("비밀번호가 서로 다릅니다.")
			return false;
		}
	}
</script>
</head>
<body>
<div class="limiter">
		<div class="container-login100" style="background-image: url('/resources/images/img-01.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">

					<div class="login100-form-avatar">
						<img src="/resources/images/avatar-01.jpg" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						비밀번호 변경/재설정
					</span>
                                       
				<form name="f" method="post" action="/user/doChangePw.do"
					onsubmit="return doSerchUserCheck(this);">
					
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						<input class="input100" type="text" name="random" placeholder="인증문자" id="random">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						<input class="input100" type="password" name="newpw" placeholder="새비밀번호" id="newpw">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						<input class="input100" type="password" name="checkpw" placeholder="비밀번호  확인" id="checkpw">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>
					<div class="container-login100-form-btn p-t-10">
						<button type="submit" class="login100-form-btn" id="pwres">
							변경</button>
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