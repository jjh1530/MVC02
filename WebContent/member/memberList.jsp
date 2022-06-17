<%@page import="kr.bit.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.bit.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDAO dao = new MemberDAO();
	ArrayList<MemberVO> list=dao.memberList();
	System.out.println(list);
%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deleteFn(num) {
		location.href="memberDelete.jsp?num="+num;
	
	}
</script>
</head>
<body>
<table class="table table-bordered">
  <tr>
    <td>번호</td>
    <td>아이디</td>
    <td>비밀번호</td>
    <td>이름</td>
    <td>나이</td>
    <td>이메일</td>
    <td>전화번호</td>
    <td>삭제</td>
  </tr>
  <% for(MemberVO vo : list){ %>
      <tr>
        <td><%=vo.getNum()%></td>
        <td><a href="memberContent.jsp?num=<%=vo.getNum()%>"><%=vo.getId()%></a></td>
        <td><%=vo.getPass()%></td>
        <td><%=vo.getName()%></td>
        <td><%=vo.getAge()%></td>
        <td><%=vo.getEmail()%></td>
        <td><%=vo.getPhone()%></td>
        <td><input type="button" value="삭제" class="btn btn-warning"
                                                  onclick="deleteFn(<%=vo.getNum()%>)"></td>
      </tr>  
  <% } %>
  <tr>
  <td colspan="8" align="right"><input type="button" value="회원가입" class="btn btn-primary"
                                             onclick="location.href='memberRegister.jsp'"/></td>
  </tr>
</table>
</body>
</html>