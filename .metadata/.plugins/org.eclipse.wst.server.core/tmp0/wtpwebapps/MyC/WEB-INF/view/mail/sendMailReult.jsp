<%@page import="poly.util.CmmUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String jspres = CmmUtil.nvl((String) request.getAttribute("res"), "0");

	String toMail = CmmUtil.nvl(request.getParameter("toMail"));
	String title = CmmUtil.nvl(request.getParameter("title"));
	String contents = CmmUtil.nvl(request.getParameter("contents"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/mail/sendMail.do" method="post">
		<table border="1">
			<td>받는사람</td>
			<td><input type="text" name="toMail"></td>
			<tr>
				<td>메일제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>메일내용</td>
				<td><input type="text" name="contents"></td>
			</tr>
		</table>
		<input type="submit" value="메일전송">
	</form>
</body>
</html>