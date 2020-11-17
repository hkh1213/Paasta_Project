<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일 작성하는 곳입니다.</title>
</head>
<body>
	<h1>메일 작성 과제</h1>
	<form name="sendMailPage" action="/mail/goMail.do" method="post">
		<table border="1" id="sendTable">
			<tr>
				<td>받는 사람</td>
				<td><input type="text" name="toMail"></td>
			</tr>
			<tr>
				<td>메일 제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" name="contents"></td>
			</tr>
		</table>
		<input type="submit" id="ok" value="[메일전송]"> <input
			type="reset" id="cancle" value="[내용초기화]">
	</form>
</body>
</html>