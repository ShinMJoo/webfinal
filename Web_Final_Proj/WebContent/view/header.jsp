<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />

 <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" />
 <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/header.css" />


<title>test header</title>
</head>

<style>
	#header h1 a{
		color:#ed786a;
		font:Nanum Pen Script;
		font-size: 23pt;
		
	}
	
	#body{
		color:#f0f0f0;
		background:#777;
	}
	
	#header-wrapper{
		text-align: center;
	}
</style>
<body>
	<div id="header-wrapper"> 
	<div id ="header" class="container">
		<h1 id = "logo">
		<a href ="main.jsp">카페 브랜드 완전정복</a>
		</h1>
		<p>브랜드별 카페 음료 및 브런치를 알려드립니다.</p>
	</div>
	
	<nav id="nav">
	<ul>
		<li style="white-space: nowrap;">
		<a class="icon fa-home" href="introduce.jsp">
		<span>INTRODUCE</span>
		</a>
		</li>
		
		<li style="white-space: nowrap;">
		<a class="icon fa-retweet" href="login2.jsp">
		<span>LOGIN</span>
		</a>
		</li>
		
		<li style="white-space: nowrap;">
		<a class="icon fa-sitemap" href="join.jsp">
		<span>JOIN</span>
		</a>
		</li>
	
		<li style="white-space: nowrap;">
		<a class="icon fa-cog" href="">
		<span>Q&A</span>
		</a>
		</li>
	</ul>
</div>
	
</body>
</html>