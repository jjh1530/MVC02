<%@page import="kr.bit.model.MemberVO"%>
<%@page import="kr.bit.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num=Integer.parseInt(request.getParameter("num"));

MemberDAO dao =new MemberDAO();
MemberVO vo = dao.memberContent(num);
%>
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
<script src='http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
<form action="memberUpdate.jsp" method="post">
<input type="hidden" name="num" value="<%=vo.getNum()%>"/>
<table class="table table-bordered">
<% if(vo!= null)  { %>
	<tr>
		<td colspane ="2"><%=vo.getName() %> 회원의 상세보기</td>
	</tr>
	<tr>
		<td>번호</td>
		<td><%=vo.getNum() %></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><%=vo.getId() %></td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td><%=vo.getPass() %></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=vo.getName() %></td>
	</tr>
	<tr>
		<td>나이</td>
		<td><input type="text" name="age" value="<%=vo.getAge() %>"/></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email" value="<%=vo.getEmail() %>"/></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="phone" value="<%=vo.getPhone() %>"/></td>
	</tr>
	<% }else { %>
	<tr>
		<td>정보가 없습니다.</td>
	</tr>
	<% } %>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="수정" class="btn btn-primary"/>
			<input type="reset" value="취소" class="btn btn-warning"/>
			<input type="button" value="목록" class="btn" onclick="location.href='memberList.jsp'"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>