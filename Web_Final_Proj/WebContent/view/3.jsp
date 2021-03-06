<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->

<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
.w3-third img{margin-bottom: -6px; opacity: 0.8; cursor: pointer}
.w3-third img:hover{opacity: 1}
</style>
<jsp:include page="./header.jsp"></jsp:include>
<body class="w3-light-grey w3-content" style="max-width:1600px">

<!-- Sidenav/menu -->
<nav class="w3-sidenav w3-white w3-animate-left w3-center w3-text-grey w3-collapse w3-top" style="z-index:3;width:300px;font-weight:bold" id="mySidenav"><br>
  <h3 class="w3-padding-64"><b>SOME<br>NAME</b></h3>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-padding w3-hide-large">CLOSE</a>
  <a href="./1.jsp" onclick="w3_close()" class="w3-padding">Hot Coffee</a> 
  <a href="./4.jsp" onclick="w3_close()" class="w3-padding">ICE Coffee</a> 
  <a href="./5.jsp" onclick="w3_close()" class="w3-padding">BaKery </a>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-white w3-xlarge w3-padding-16">
  <span class="w3-left w3-padding">SOME NAME</span>
  <a href="javascript:void(0)" class="w3-right w3-btn w3-white" onclick="w3_open()">☰</a>
</header>

<!-- Overlay effect when opening sidenav on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Push down content on small screens --> 
  <div class="w3-hide-large" style="margin-top:83px"></div>
  
  <!-- Photo grid -->
  <div class="w3-row">
    <div class="w3-third">
      <img src="../images/menu/psccice1.png" style="width:100%" onclick="onClick(this)" alt="따뜻한 아메리카노 먹으면 빠져든다">
      <img src="../images/menu/psccice4.png" style="width:100%" onclick="onClick(this)" alt="따뜻한 아메리카노 먹으면 빠져든다">
       <img src="../images/menu/psccice7.png" style="width:100%" onclick="onClick(this)" alt="따뜻한 아메리카노 먹으면 빠져든다">
    </div>

    <div class="w3-third">
      <img src="../images/menu/psccice2.png" style="width:100%" onclick="onClick(this)" alt="따뜻한 아메리카노 먹으면 빠져든다">
      <img src="../images/menu/psccice5.png" style="width:100%" onclick="onClick(this)" alt="따뜻한 아메리카노 먹으면 빠져든다">
       <img src="../images/menu/psccice8.png" style="width:100%" onclick="onClick(this)" alt="따뜻한 아메리카노 먹으면 빠져든다">
    </div>
    
    <div class="w3-third">
      <img src="../images/menu/psccice3.png" style="width:100%" onclick="onClick(this)" alt="따뜻한 아메리카노 먹으면 빠져든다">
      <img src="../images/menu/psccice6.png" style="width:100%" onclick="onClick(this)" alt="따뜻한 아메리카노 먹으면 빠져든다">
       <img src="../images/menu/psccice9.png" style="width:100%" onclick="onClick(this)" alt="따뜻한 아메리카노 먹으면 빠져든다">
    </div>
  </div>

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <ul class="w3-pagination">
      <li><a class="w3-black" href="psccicemenu1.jsp">1</a></li>
      <li><a class="w3-hover-black" href="psccicemenu2.jsp">2</a></li>
      <li><a class="w3-hover-black" href="#">>></a></li>
    </ul>
  </div>
  
  <!-- Modal for full size images on click-->
  <div id="modal01" class="w3-modal w3-black w3-padding-0" onclick="this.style.display='none'">
    <span class="w3-closebtn w3-text-white w3-opacity w3-hover-opacity-off w3-xxlarge w3-container w3-display-topright">×</span>
    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
      <img id="img01" class="w3-image">
      <p id="caption"></p>
    </div>
  </div>

 
  
  <div class="w3-black w3-center w3-padding-24">Powered by <a href="http://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></div>

<!-- End page content -->
</div>

<script>
// Script to open and close sidenav
function w3_open() {
    document.getElementById("mySidenav").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidenav").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

</script>


</body>
</html>