<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
   <title>Insert title here</title>
   
   
   <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" /> 
   <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/header.css" /> 
 
   <style>
   
      h2{
         text-align:center;
      }
      legend{
         font-size: 100%;
          font: inherit;
          vertical-align: baseline
            
      }
   
      fieldset{
            display: block;
          -webkit-margin-start: 2px;
          -webkit-margin-end: 2px;
          -webkit-padding-before: 0.35em;
          -webkit-padding-start: 0.75em;
          -webkit-padding-end: 0.75em;
          -webkit-padding-after: 0.625em;
          min-width: -webkit-min-content;
          border-width: 2px;
          border-style: groove;
          border-color: threedface;
          border-image: initial;
      }
      form input[type="text"]{
      
         width:35%;
         
         
      }
      .id{
      
            margin: 3em 0em 0em 23em;
      }
      .id1{
          
         
               line-height: 1.75em;
             font-size: 12pt;
             font-weight: 20;
             margin: 0em 0em 0em 25em;
               
         
      
      }
      .password{
      
            margin: 2em 0em 0em 23em;
      }
      .password1{
         -moz-transition: background-color 0.25s ease-in-out;
         -webkit-transition: background-color 0.25s ease-in-out;
         -ms-transition: background-color 0.25s ease-in-out;
         transition: background-color 0.25s ease-in-out;
         -webkit-appearance: none;
         display: block;
         border: 0;
         background: #e8e8e8;
         box-shadow: inset 2px 2px 0px 0px rgba(0, 0, 0, 0.1);
         border-radius: 4px;
         line-height: 1.25em;
         padding: 0.75em 1em 0.75em 1em;
         line-height: 1.75em;
          font-size: 12pt;
          font-weight: 20;
          margin: 0em 0em 0em 25em;
          width:35%;
          height:10%
      
      }
      
      .button-style1{
         width:20%;
         margin: 0em 0em 0em 34em;
      }      
      .find{
      
         margin: 0em 0em 0em 26em;
      }
      .button-style2{
         
         padding: 2em 0em 0em 2.75em;
         margin: 0em 0em 0em 37em;
      
      }
      
   </style>
</head>
<jsp:include page="./header.jsp"></jsp:include>
<body class="header">
   
   

   <!-- Main -->

   <div class="titleArea">
      <h2>LOGIN</h2>
   </div>
   <hr class="layout"></hr>
   <p>
      <br>
   <div id="container">
      <div class="contents">
         <div class="login">
         <%--    <%
               Member user = (Member) session.getAttribute("user");
            %>
            <%
               if (user == null) {
            %> --%>

            <form class="signUp" id="signupForm" action="loginSuccess"
               method="post">
               <fieldset style="border: 1px solid: #e8e8e8; vertical-align: top;">
                  <legend style ="text-align:center;">회원로그인</legend>
                  <div>
                  <div>
                     <label  class="id">ID</label> 
                     <input class="id1" type="text" name="id" id="member_id" />
                  </div>
                  
                  <div >
                     <label class="password">PW</label> 
                     <input class="password1" type="password" name="password" id="member_passwd" />
                  </div>
                  </div>
                  <p>
                  
                  
                     <%-- <a class="loginButton" href="<%=request.getContextPath()%>/index2">로그인</a> --%>
                  <div class= "b">                     
                     <input type="submit" value="  로그인  " class="button-style1">
                  </div>
                  <br>
                  
                  <div class="find">
                     <a href="findId"> <input type="button"  value="아이디 찾기" /></a></li>
                     <a href="findPass"> <input type="button"  value="비밀번호 찾기" /></a> </li>
                  <br>
                  <p>
                  
                  </div>
                  
                  
                  
                  
 
    </div>
         
      </div>
   </div>



</body>
<jsp:include page="./footer.jsp"></jsp:include>
</html>