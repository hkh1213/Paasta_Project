<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="static poly.util.CmmUtil.nvl" %>
    <%String name = nvl((String)request.getAttribute("name")); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	�ȳ��ϼ���, <%=name %>��
</body>
</html>