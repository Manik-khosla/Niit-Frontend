<html>
<head>
<title>Home Decor</title>
</head>
<body style="background-color:#f2f2f2">
<%@ include file="nav.jsp" %>

<div class="container fluid">
<div id="carousel-container"> 
<!-- Carousel start -->
<div id="HomepgCarousel" class="carousel slide" data-ride="carousel">

<!-- carousel indicators -->
<ol class="carousel-indicators">
<li data-target="#HomepgCarousel" data-slide-to="0" class="active"></li>
<li data-target="#HomepgCarousel" data-slide-to="1"></li>
<li data-target="#HomepgCarousel" data-slide-to="2"></li>
<li data-target="#HomepgCarousel" data-slide-to="3"></li>
</ol>

<div class="carousel-inner">

<div class="item active">
<img src="images/Home.jpg"/ alt="Home">
</div>

<div class="item">
<img src="images/LivingRoom.jpg" alt="Livingroom"/>
</div>

<div class="item">
<img src="images/Bedroom.jpg" alt="Bedroom"/>
</div>

<div class="item">
<img src="images/Bathroom.jpg" alt="Bathroom"/>
</div>

</div>

<!-- carousel controls -->
<a class="left carousel-control" href="#HomepgCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#HomepgCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>

</div> 
</div>
</div>
</body>
</html>
