<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Decor Edit product</title>
</head>
<body>
<%@ include file="nav.jsp" %>
<h1 style="color:Black;font-family:Microsoft Sans Serif;font-size:28">Edit Product</h1>
<form:form action="admin-Editproduct" id="editproductform" modelAttribute="prdt" enctype="multipart/form-data">

<form:hidden path="Id" />

<div class="form-group">
<form:label class="control-label" path="ProductName">Product Name</form:label>
<form:input path="ProductName" class="form-control" style="width:50%" placeholder="Product Name"  required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="Price">Price</form:label>
<form:input path="Price" class="form-control" style="width:50%;" placeholder="Price" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="Quantity">Quantity</form:label>
<form:input path="Quantity"  class="form-control" style="width:50%;" placeholder="Quantity" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="Description">Description</form:label>
<form:textarea path="Description"  class="form-control" style="width:50%;" placeholder="Description" required="required" rows="2" cols="30"/>
</div>

<div class="form-group">
<form:label class="control-label" path="Category">Select Category</form:label>
<c:forEach items="${categories}" var="c">
<form:radiobutton path="Category.id" value="${c.id}" required="required"/>${c.categoryName};
</c:forEach>
</div>

<div class="form-group">
<form:label class="control-label" path="image">Upload image</form:label>
<input type="file" name="image">
</div>
<button type="submit" class="btn btn-primary" data-target="#SipModal" data-toggle="modal" >Update product</button>

<div id="SipModal" class="modal fade">
<div class="modal-dialog modal-md" style="width:400px">
<div class="modal-content">

<div class="modal-body">
<h3>Product Updated</h3>
</div>

</div>
</div>
</div>



</form:form>
</body>
</html>