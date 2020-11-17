<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="poly.util.CmmUtil" %>    
    <%
    String jspRes = CmmUtil.nvl((String)request.getAttribute("res"), "0");
    
    String toMail = CmmUtil.nvl(request.getParameter("toMail"));
    String title = CmmUtil.nvl(request.getParameter("title"));
    String contents = CmmUtil.nvl(request.getParameter("contents"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일 발송하는 확인 페이지 입니다.</title>
</head>
<body>
<% 
if(jspRes.equals("1")){
	
	out.print(toMail + "로 메일을 전송하였습니다.");
	out.print("메일 제목 : " + title);
	out.print("메일 내용 : " + contents);
	
} else{
	out.print(toMail + "로 메일 전송이 실패 하였습니다.");
}
%>

</body>
</html>