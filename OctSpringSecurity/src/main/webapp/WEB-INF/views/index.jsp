<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>
	<title>시큐리티 테스트</title>
</head>

<body>
	<h1>인덱스 화면입니다.</h1>
		<sec:authorize access="!isAuthenticated()">
			Login<br>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			Logout<br>
		</sec:authorize>
</body>
</html>