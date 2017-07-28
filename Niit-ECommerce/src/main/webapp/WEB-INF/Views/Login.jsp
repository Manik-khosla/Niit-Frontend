<!DOCTYPE html >
<html>
<head>
<title>HomeDecor Login</title>
</head>
<body>
<%@ include file="nav.jsp" %><!-- importing navigation bar -->

<h1 style="color:Black;font-family:Microsoft Sans Serif;font-size:28">Login</h1>
<div class="container" >
<c:url value="/j_spring_security_check" var="login"></c:url>
<form action="${login }" id="loginform" method="post">

<div class="form-group">
<label class="control-label">User Name</label>
<input type="text"  class="form-control" style="width:50%;" name="username" placeholder="Username">
</div>

<div class="form-group">
<label class="control-label">Password</label>
<input type="Password"  class="form-control"  style="width:50%;" password="password" placeholder="Password"></br>
<button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-log-in">&nbsp</span>Login</button>
</div>

</form>

</div>

</body>
</html>