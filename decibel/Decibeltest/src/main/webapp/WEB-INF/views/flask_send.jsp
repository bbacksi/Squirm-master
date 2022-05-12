
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>음성경로 전송</h1>

	<!-- <form action="test" method="GET"> -->
	<form action="http://220.80.33.113:5003/address" method="POST">
		<input type="text" name="address_sound">
		<input type="submit" value="전송">
	</form>
	
	
</body>

</html> 