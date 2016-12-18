<%@page import="wpf.service.UserServiceImpl"%>
<%@page import="wpf.service.UserService"%>
<%@page import="wpf.dto.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Test Form</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		UserService us = UserServiceImpl.getUserServiceImpl();
		Users user = null;
		if(id != null){
			%>
			<h1><%=id %></h1>
			<h1><%=pass %></h1>
			<% 
		
			user = us.login(id, pass);
		}
	%>

	<%
		if(user != null){
			%>
			<h1>login 성공!</h1>
			<% 
		}
	%>
	<!-- Action value : 다음으로 넘아갈 jsp로 설정해야 함 -->
	<form action="loginTest.jsp" method="post">
		<table>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="id" id="id">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" name="pass" id="pass">
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="로그인">
				</td>
				<td>
					<p>하아.. 커밋해주세요</p>
				</td>
			</tr>
			
		</table>
	</form>
	
	
</body>
</html>