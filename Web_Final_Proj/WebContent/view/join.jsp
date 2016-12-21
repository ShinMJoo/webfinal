<%@page import="wpf.dto.Users"%>
<%@page import="wpf.service.UserServiceImpl"%>
<%@page import="wpf.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>카완정 회원가입</title>
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
	color: #FFFFFF; /* 흰색 */
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
	/* 상좌하우 */
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
				alert("회원가입 성공! 로그인해주세요.");
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
	<h3>기본정보</h3>
	</div>
	<p class="required">
	<img alt="필수" 
	src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
	/ico_required.gif"></img>
	필수입력사항</p>
	<hr><p>
	<form method="post" action="join.jsp" id="myform">
	<div class="boardWrite">
		<table border="1" summary="">
			<tbody>
				<tr>
					<th scope="row">ID
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
				<td>
					<input name="id" class="inputTypeText" id="id" type="text"/>
					
					<input type="button" id="check" class="check"  value="ID 중복확인"/>
					(영문소문자/숫자, 4~16자)
					
				</td>
				</tr>
				
				<tr>
					<th scope="row">PASSWORD
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
				<td>
					<label for="pass"></label> 
					<input type="password" name="pass" id="pass" placeholder="영문+숫자조합8이상"/>
				</td>
				</tr>
				
				<tr>
					<th scope="row">PASSWORD 확인
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
				<td>
					<label for="passok" class="inputlabel"></label>
					<input type="password" name="password" placeholder="영문+숫자조합8이상"/>
				</td>
				</tr>
				
				<tr>
					<th id ="nameTitle" scope="row">이름
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<label for="name" class="inputlabel"></label> 
						<input type="text" name="name" id="name"/>
					</td>
				
				</tr>
				
				<tr>
					<th id ="userGender" scope="row">성별
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<input type="radio" name="memGender" value="male" class="radio" /> 남
						<input type="radio" name="memGender" value="female" class="radio" />여
					</td>
				</tr>
				
				<tr>
					<th scope="row">휴대전화
					<img alt="필수" 
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
					<th scope="row">이메일
					<img alt="필수" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<label for="email" class="inputlabel"></label>
						<input type="text" name="email" id="email"/>
					</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>
						<input type="number" name="birth" id="birth">
					</td>
				</tr>
				<tr>
					<th>좋아하는 브랜드</th>
					<td>
						<select name="brand">
							<option value="angel" label="엔젤리너스"></option>
							<option value="bene" label="카페베네"></option>
							<option value="ediya" label="이디야커피"></option>
							<option value="hallys" label="할리스커피"></option>
							<option value="pascucci" label="파스쿠찌"></option>
							<option value="starbucks" label="스타벅스"></option>
							<option value="tom" label="탐앤탐스"></option>
							<option value="twosome" label="투썸플레이스"></option>
						</select>
					</td>
				</tr>
			<tr>
				<th scope="row">자기소개</th>
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
		<input type="submit" class="button button-style1" value="가입"/>
		<a href="index" class="button button-style1">취소</a>
	</div>
	</form>
	
		
</body>
<jsp:include page="./footer.jsp"></jsp:include>
</html>