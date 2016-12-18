<%@page import="wpf.dto.Users"%>
<%@page import="wpf.service.UserServiceImpl"%>
<%@page import="wpf.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join Test Form</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String sTbirth = request.getParameter("birth");
		String brand = request.getParameter("brand");
		Integer birth = 0;
		if(sTbirth != null){
			birth = Integer.parseInt(sTbirth);
		}
		UserService us = UserServiceImpl.getUserServiceImpl();
		Users user = new Users(id, pass, name, email, phone, birth, brand);
		us.join(user);
	%>
	
	<form action="joinTest.jsp" method="post">
		<h1>회원 가입 Test</h1>
		<br>
		아이디 : <input type="text" name="id" id="id"><br>
		비밀번호 : <input type="password" name="pass" id="pass"><br>
		이름 : <input type="text" name="name" id="name"><br>
		이메일 : <input type="text" name="email" id="email"><br>
		전화번호 : <input type="text" name="phone" id="phone"><br>
		생일 : <input type="number" name="birth" id="birth"><br>
		브랜드 : <input type="text" name="brand" id="brand"><br>
		<input type="submit" value="가입하기">
		<input type="button" value="취소"><br>
	</form>
</body>
</html>