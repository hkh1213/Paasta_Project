><%@page import="poly.util.CmmUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
String user_name = CmmUtil.nvl((String)session.getAttribute("name"));
%>
<style>
#top {
display : inline;
position: relative;
left : 100px;
}
</style>
<body>
<div id="top">
			<%if(user_name.isEmpty()) {%> <a href="/user/userLogin.do"
			style="color: #0B0B0B;"> MY'C 접속페이지 입니다!:) </a> 
			<span style="font size: 1em">
			<%}else{ %> <%=user_name %>님 접속 <%} %> </span>
</div>
</body>
</html>