<!DOCTYPE html>
<html>
<head>
<title>HomeDecor ProductId-${prdt.id }</title>
</head>
<body style="background-color:#666666">
<%@ include file="nav.jsp" %>
<div class="container-fluid" id="viewproductform">
<div class="panel panel-default container" id="viewproductpanel">
<div class="panel-heading style="style="background-color:#dcdcdc;"> <h1 style="background-color:#dcdcdc;">Product Details</h1></div>
<div class="panel-body">
<img src="images/${prdt.id}.jpg" class="img-thumbnail" id="viewproductformimage" />
<table class="table table-hover " id="viewproducttable">
<tbody>
<tr>
<td><b>Product Name</b><td>
<td>${prdt.productName}</td>
</tr>

<tr>
<td><b>Price</b><td>
<td>${prdt.price}</td>
</tr>

<tr>
<td><b>Quantity</b><td>
<td>${prdt.quantity}</td>
</tr>

<tr>
<td><b>Description</b><td>
<td>${prdt.description}</td>
</tr>

<tr>
<td><b>Wishlist</b></td>
<td><a href="#"><span class="glyphicon glyphicon-thumbs-up" id="thumbsup"></span></a></td>
</tr>
</tbody>
</table>
</div><!-- panel body end -->

<div class="panel-footer" style="background-color:#dcdcdc;">
<a href="Getallproducts"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-triangle-left"></span>Back</button></a>
</div>

</div>
</div>

</body>
</html>