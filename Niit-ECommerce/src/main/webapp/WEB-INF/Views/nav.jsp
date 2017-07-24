<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="Styling/bootstrap/css/bootstrap.css"  rel="stylesheet" type="text/css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="Styling/bootstrap/js/bootstrap.js" type="text/javascript"></script>

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Jstl tag library -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 

<link href="Styling/Styles.css" rel="stylesheet">
<title>Home Decor</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="container-fluid" id="Logocontainer">
<img src="images/Logo.jpg" alt="Logo" id="Logo">
<nav class="navbar navbar-default" id="navigationbar">
<ul class="nav navbar-nav">
<li class="active"><a href=""><span class="glyphicon glyphicon-home fa-2x"></span></a></li>

<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-cutlery"></span> Kitchen</a>
<ul class="dropdown-menu" id="dropmenu">
<li><h4>CookTops</h4></li>
<li><a href="#">Gas stoves</a></li>
<li><a href="#">Induction cooktops</a></li>
<li><a href="#">Hobs</a></li>
<li class="divider"></li>
<li><h4>Chimneys</h4></li>
<li><a href="#">Hood chimneys</a></li>
<li><a href="#">Chimneys and cooktop combos</a></li>
<li><a href="#">Designer chimneys</a></li>
<li><a href="#">Straight line chimneys</a></li>
</ul>
</li>



<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-lamp"></span> Home Decor</a>
<ul class="dropdown-menu" id="dropmenu">
<li><h4>Wall Art</h4></li>
<li><a href="#">Posters</a></li>
<li><a href="#">Wallpapers</a></li>
<li><a href="#">Paintings</a></li>
<li class="divider"></li>
<li><h4>Wall shelves</h4></li>
<li><a href="#">Contemporary</a></li>
<li><a href="#">Colonial</a></li>
<li class="divider"></li>
<li><h4>Vinatge Decor</h4></li>
<li><a href="#"></a></li>
<li><a href="#">Nautical Decor</a></li>
</ul>
</li>

<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-glass"></span> Dining</a>
<ul class="dropdown-menu" id="dropmenu">
<li><h4>Plates</h4></li>
<li><a href="#">Metal ware</a></li>
<li><a href="#">Glass and Opalware</a></li>
<li><a href="#">ceramic and stoneware</a></li>
<li class="divider"></li>
<li><h4>Cutlery</h4></li>
<li><a href="#">Cutlery sets</a></li>
<li><a href="#">Cutlery holders</a></li>
<li><a href="#">forks</a></li>
<li><a href="#">Knives</a></li>
<li class="divider"></li>
<li><h4>Trays and Platters</h4></li>
<li><a href="#">Serving Tray</a></li>
<li><a href="#">Platters</a></li>
<li><a href="#">Cake trays</a></li>
</ul>
</li>

<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-bed"></span> Bedroom</a>
<ul class="dropdown-menu" id="dropmenu">
<li><h4>Beds</h4></li>
<li><a href="#">Single beds</a></li>
<li><a href="#">Poster Beds</a></li>
<li><a href="#">King size Beds</a></li>
<li><a href="#">Queen size Beds</a></li>
<li class="divider"></li>
<li><h4>Bedsheets</h4></li>
<li><a href="#">Single</a></li>
<li><a href="#">King size</a></li>
<li><a href="#">Queen size</a></li>
<li><a href="#">Fitted</a></li>
</ul>
</li>

<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="fa fa-bath"></span>Bathroom</a>
<ul class="dropdown-menu" id="dropmenu">
<li><h4>Showers</h4></li>
<li><a href="#">Overhead showers</a></li>
<li><a href="#">Hand held showers</a></li>
<li><a href="#">Shower panels</a></li>
<li class="divider"></li>
<li><h4>Bathroom Mirrors</h4></li>
<li><a href="#">Wall Mirrors</a></li>
<li><a href="#">Cosmetic Mirrors</a></li>
<li class="divider"></li>
<li><h4>Bathroom Storage</h4></li>
<li><a href="#">Bathroom shelves</a></li>
<li><a href="#">Bathroom Cabinets</a></li>
</ul>
</li>

<li><a href="admin-addproductform"><span class="glyphicon glyphicon-plus-sign"></span> Add Product</a></li>
<li><a href="Getallproducts"><span class="glyphicon glyphicon-list-alt"></span> Browse Product</a></li>

<li><a href="AboutUs"><span class="glyphicon glyphicon-info-sign"></span> About-us</a></li>
<li><a href="ContactUs"><span class="glyphicon glyphicon-earphone"></span> Contact-us</a></li>
</ul>

<ul class="nav navbar-nav navbar-right">
<li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
<li><a href="Signup"><span class="glyphicon glyphicon-user"></span> Signup</a></li>
</ul>


</nav>
</div><!-- navbar end -->
</body>
</html>