<!DOCTYPE html>
<html>
<head>
<title>HomeDecor Add Product</title>
</head>
<body>
<%@ include file="nav.jsp" %>
<h1 style="color:Black;font-family:Microsoft Sans Serif;font-size:28">Add New Product</h1>
<div class="container">

<form:form action="admin-addproduct"   method="post"  id="addproductform"  modelAttribute="p" enctype="multipart/form-data">

<form:hidden path="Id"/>

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
<input type="file" name="image"/>
</div>
<button type="submit" class="btn btn-primary" data-target="#SipModal" data-toggle="modal" >Add Product</button>

<div id="SipModal" class="modal fade">
<div class="modal-dialog modal-md" style="width:400px">
<div class="modal-content">

<div class="modal-body">
<h3>Product Successfully Added</h3>
</div>

</div>
</div>
</div>

</form:form>
</div>
</body>
</html>