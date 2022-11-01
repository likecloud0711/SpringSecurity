<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>
	<title>시큐리티 테스트</title>
</head>

<body>
	<h1>Admin 권한을 가진 사용자를 위한 화면입니다.</h1>
	<h2>
		로그인 id :
		<sec:authentication property="principal.users.id"/>
		<sec:authorize access="!isAuthenticated()">
			Login
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			Logout
		</sec:authorize>
		권한 :
		<sec:authentication property="principal.users.role" />
		
	</h2>
	<a href="/loginSuccess">뒤로 가기</a></body>
</body>
</html>