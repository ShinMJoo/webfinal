<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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

.boardWrite input{
	vertical-align: middle;
	height:22px;
	line-height:180%;
}

.boardWrite th{
	width:150px;
	text-align:left;
}

.joinCancel{
	margin:5px;
} */
</style>
</head>
<body>
</head>
<body class="header">
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
	<form method="post" action="join" enctype="multipart/form-data" id="myform" onsubmit="return checkCheckBoxes(this);">
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
					<input name="memId" class="inputTypeText" id="memId" type="text"/>
					<input type="button" id="check" value="ID �ߺ�Ȯ��"/>
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
					<label for="memPassword"></label> 
					<input type="password" name="memPassword" placeholder="����+���� ���� 8 �̻�"/>
					<!-- <input name="memPassword" id="memPassword" type="password" maxlength="16"></input>
					(���� + ���� ���� 8�� �̻�) -->	
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
					<input type="password" name="password" placeholder="����+���� ���� 8 �̻�"/>
				</td>
				</tr>
				
				<tr>
					<th id ="nameTitle" scope="row">�̸�
					<img alt="�ʼ�" 
					src="http://img.echosting.cafe24.com/skin/base_ko_KR/member
					/ico_required.gif"></img>
					</th>
					<td>
						<label for="memName" class="inputlabel"></label> 
						<input type="text" name="memName" />
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
						<input type="text" name="memPhone" />
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
						<label for="memEmail" class="inputlabel"></label>
						<input type="email" name="memEmail" />
					</td>
				</tr>
			
			<tr>
				<th scope="row">������ ����</th>
				<td>
					<label for="memImg" class="inputlabel"></label> 
					<input type="file" name="memImg" />
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
	<!-- <a href="index" class="button button-style1">����</a> -->
	<a href="index" class="button button-style1">���</a>
	</div>	
</body>
<jsp:include page="./footer.jsp"></jsp:include>
</html>