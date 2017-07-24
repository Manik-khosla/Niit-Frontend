<!DOCTYPE html>
<html>
<head>
<title>HomeDecor ProductList</title>
<script>
function disable(){
	$('.view').on('click', function() {
	    $(this).toggleClass('glyphicon-eye-open glyphicon-eye-close');
	  
	   
	});

}
</script>
</head>
<body>
<%@ include file="nav.jsp" %>
<div>
<h1 style="color:black;Font-family:Microsoft sans serif;font-size:28">List of Products</h1>
</div>

<div class="container">
<table class="table table-hover" id="table">
<tr>
<th>Image</th>
<th>Product Name</th>
<th>Price</th>
<th>Quantity</th>
<th>Description</th>
</tr>

<tbody>
<c:forEach items="${products}"  var="p"  >
<c:url value="images/${p.id }.jpg" var="imageurl"></c:url>
<tr class="tablerow">
<td><img src="${imageurl }" height="40px" width="40px"></td>
<td>${p.productName}</td>
<td>${p.price}</td>
<td>${p.quantity}</td>
<td>${p.description}</td>
<td><a href="Viewproduct${p.id}"><span class="glyphicon glyphicon-info-sign " style="color:red;font-size:15px"></span></a></td>
<td><a href="admin-Editproductform${p.id }"><span class="glyphicon glyphicon-edit " style="color:#ffcc00;font-size:15px;"></span></a></td>
<td><a href="#" onclick="disable()"><span class="glyphicon glyphicon-eye-open view" style="color:blue;font-size:15px;"></span></a>
<td><a href="admin-Deleteproduct${p.id}"><span class="glyphicon glyphicon-trash " style="color:limegreen;font-size:15px;"></span></a></td>
</tr>
</c:forEach>

</tbody>
</table>

</div>
</body>
</html>