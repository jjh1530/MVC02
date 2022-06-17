<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
회원가입화면
<form action="memberInsert.jsp" method="post">
<table class="table table-bordered">
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id"/></td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td><input type="password" name="pass"/></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name"/></td>
	</tr>
	<tr>
		<td>나이</td>
		<td><input type="text" name="age"/></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email"/></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="phone"/></td>
	</tr>
	<tr>
		<td colspan ="2" align="center">
			<input type="submit" value="가입" class ="btn btn-primary">
			<input type="reset" value="취소" class ="btn btn-warning" onclick="location='memberList.jsp'">
		</td>
	</tr>
</table>

</form>
</body>
</html>