<%@page import="wpf.dto.Users"%>
<%@page import="wpf.service.UserServiceImpl"%>
<%@page import="wpf.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ī���� ȸ������</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="">
<style>
#stylized button {
	clear: both;
	/* margin-left: 150px; */
	width: 100px;
	height: 31px;
	text-align: center;
	line-height: 31px;
	background-color: #000;
	color: #FFFFFF; /* ��� */
	font-size: 11px;
	font-weight: bold;
	font-family: tahoma;
}


#input button button-style1{
	height:60px;
}
.agree textarea{
	vertical-align: middle;
	height:120px;
	line-height:180%;
}

#container2 {
	text-align: left;
	margin: 0px 40% 0px 40%;
	/* �����Ͽ� */
}

.need {
	color: red;
}

.required{
	text-align:right;
}

.boardWrite th{
	width:150px;
	text-align:left;
}

.joinCancel{
	margin:5px;
	height:60px;
} */

#check{
	vertical-align: middle;
	height:60px;
	line-height:180%;
}

#inputTypeText{
	width:120px;
}



}

</style>
</head>
<body>
</head>
<body class="header">
	
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
		Boolean result = us.join(user);
	%>
	<%
		if(result == true){
			%>
			<script>
				alert("ȸ������ ����! �α������ּ���.");
				location.href= "login.jsp";
			</script>
			<%
		}
	%>
	<jsp:include page="./header.jsp"></jsp:include>
	<!-- Main -->
	
	<div class="titleArea">
		<h2>JOIN</h2>
	</div>
	<hr class="layout"></hr>
	<div class="smallArea">
	<h3>�⺻����</h3>
	</div>
	<p class="required">
	<img alt="�ʼ�" 
	src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
	/ico_required.gif"></img>
	�ʼ��Է»���</p>
	<hr><p>
	<form method="post" action="join.jsp" id="myform">
	<div class="boardWrite">
		<table border="1" summary="">
			<tbody>
				<tr>
					<th scope="row">ID
					<img alt="�ʼ�" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
				<td>
					<input name="id" class="inputTypeText" id="id" type="text"/>
					
					<input type="button" id="check" class="check"  value="ID �ߺ�Ȯ��"/>
					(�����ҹ���/����, 4~16��)
					
				</td>
				</tr>
				
				<tr>
					<th scope="row">PASSWORD
					<img alt="�ʼ�" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
				<td>
					<label for="pass"></label> 
					<input type="password" name="pass" id="pass" placeholder="����+��������8�̻�"/>
				</td>
				</tr>
				
				<tr>
					<th scope="row">PASSWORD Ȯ��
					<img alt="�ʼ�" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
				<td>
					<label for="passok" class="inputlabel"></label>
					<input type="password" name="password" placeholder="����+��������8�̻�"/>
				</td>
				</tr>
				
				<tr>
					<th id ="nameTitle" scope="row">�̸�
					<img alt="�ʼ�" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<label for="name" class="inputlabel"></label> 
						<input type="text" name="name" id="name"/>
					</td>
				
				</tr>
				
				<tr>
					<th id ="userGender" scope="row">����
					<img alt="�ʼ�" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<input type="radio" name="memGender" value="male" class="radio" /> ��
						<input type="radio" name="memGender" value="female" class="radio" />��
					</td>
				</tr>
				
				<tr>
					<th scope="row">�޴���ȭ
					<img alt="�ʼ�" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<label for="memNa" class="inputlabel"></label>
						<select name="memNa">
							<option value="SKT" label="SKT"/> 
							<option value="KT" label="KT"/>
							<option value="U+" label="U+"/>
						</select> 
						<input type="text" name="phone" id="phone"/>
						<!-- <input name="mobile[]" id="mobile3" type="text" maxlength="4"></input> -->
					</td>
				</tr>
				
				<tr>
					<th scope="row">�̸���
					<img alt="�ʼ�" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<label for="email" class="inputlabel"></label>
						<input type="text" name="email" id="email"/>
					</td>
				</tr>
				<tr>
					<th>�������</th>
					<td>
						<input type="number" name="birth" id="birth">
					</td>
				</tr>
				<tr>
					<th>�����ϴ� �귣��</th>
					<td>
						<select name="brand">
							<option value="angel" label="�������ʽ�"></option>
							<option value="bene" label="ī�亣��"></option>
							<option value="ediya" label="�̵��Ŀ��"></option>
							<option value="hallys" label="�Ҹ���Ŀ��"></option>
							<option value="pascucci" label="�Ľ�����"></option>
							<option value="starbucks" label="��Ÿ����"></option>
							<option value="tom" label="Ž��Ž��"></option>
							<option value="twosome" label="�����÷��̽�"></option>
						</select>
					</td>
				</tr>
			<tr>
				<th scope="row">�ڱ�Ұ�</th>
				<td>
					<label for="memIntro"></label> 
					<textarea cols="40" rows="10" name="memIntro"></textarea>
					<!-- <input type="text" name="memIntro" id="memIntro" /> -->
				</td>
			</tr>					
			</tbody>
		</table>
	</div>
	<div class="joinCancel">
		<input type="submit" class="button button-style1" value="����"/>
		<a href="index" class="button button-style1">���</a>
	</div>
	</form>
	
		
</body>
<jsp:include page="./footer.jsp"></jsp:include>
</html>