<!DOCTYPE html >
<html>
<head>
<title>HomeDecor Login</title>
</head>
<body>
<%@ include file="nav.jsp" %><!-- importing navigation bar -->

<h1 style="color:Black;font-family:Microsoft Sans Serif;font-size:28">Login</h1>
<div class="container" >

<form class="form-Horizontal" id="loginform">

<div class="form-group">
<label class="control-label">User Name</label>
<input type="email"  class="form-control" style="width:50%;" placeholder="username">
</div>

<div class="form-group">
<label class="control-label">Password</label>
<input type="Password"  class="form-control"  style="width:50%;" placeholder="Password"></br>
<button type="button" class="btn btn-success"><span class="glyphicon glyphicon-log-in">&nbsp</span>Login</button>
</div>

</form>

</div>

</body>
</html>