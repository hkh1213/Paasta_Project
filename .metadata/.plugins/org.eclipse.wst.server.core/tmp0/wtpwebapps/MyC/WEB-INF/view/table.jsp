<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table</title>
</head>
<body>
<table border="1">
	<%for(int i=0; i<3; i++) {%>
		<%for(int j=0; j<4; j++) {%>
		<th><%=i%>행<%=j %>열</th>	
		<%} %><tr>
	<%} %>
		</table>
</body>
</html>