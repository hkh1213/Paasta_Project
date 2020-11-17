<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String msg = (String)request.getAttribute("msg");
    String url = (String)request.getAttribute("url");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 하시겠습니까?</title>
<script type="text/javascript">
if(confirm("<%=msg%>")){
	alert("로그아웃이 완료되었습니다.");
	location.href="<%=url%>";
}else{
	alert("로그아웃이 취소되었습니다.");
	location.href="/user/mainPage.do";
}

</script>
</head>
<body>

</body>
</html>