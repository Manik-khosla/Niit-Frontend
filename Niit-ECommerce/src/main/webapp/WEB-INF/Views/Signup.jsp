<!DOCTYPE html >
<html>
<head>
<title>HomeDecor SignUp</title>
</head>
<script>
function slide1()
{   
	$("#first").toggle("slide");
	$("#personaldetails").toggle("slide");
	$('body').css('overflow','auto');
	$('#lbsform').show();
}

function back()
{
$("#lbsform").toggle("slide");
$("#first").show();
$("#personaldetails").show();
$('body').css('overflow','hidden');
}
</script>
<body style="overflow:hidden">
<%@ include file="nav.jsp"%>


<h1 id="first" style="color:Black;font-family:Microsoft Sans Serif;font-size:28">Enter your Details</h1>


<div class="container" id="personaldetcontainer">
<form:form  action="SignupUser" modelAttribute="user"  style="margin-top:0;">
<div id="personaldetails" style="margin-left:250px">
<form:hidden path="Id" />

<p style="color:red">${Duplicateusername}</p>

<div class="form-group">
<form:label class="control-label" path="FirstName">First Name</form:label>
<form:input path="FirstName" id="fname" class="form-control" style="width:50%" placeholder="First Name"/>
<form:errors path="FirstName" cssStyle="color:red" ></form:errors>
</div>

<div class="form-group">
<form:label class="control-label" path="LastName">Last Name</form:label>
<form:input path="LastName"  id="lname" class="form-control" style="width:50%" placeholder="Last Name"/>
<form:errors path="LastName" cssStyle="color:red" ></form:errors>
</div>

<div class="form-group">
<form:label class="control-label" path="Email">Email</form:label>
<form:input path="Email" id="email" class="form-control" style="width:50%" placeholder="Email"/>
<form:errors path="Email" cssStyle="color:red" ></form:errors>
<p style="color:red">${Duplicateemail }</p>
</div>

<div class="form-group">
<form:label class="control-label"  path="Gender">Gender</form:label>
<form:label path="Gender"><form:radiobutton id="male" path="Gender"  value="Male"/>Male</form:label>
<form:label path="Gender"><form:radiobutton id="female" path="Gender"  value="Female"/>Female</form:label>
</div>


<div class="form-group">
<form:label class="control-label" path="ContactNumber">Contact Number</form:label>
<form:input path="ContactNumber"  id="Cno" class="form-control" style="width:50%" placeholder=" 10 digit Contact Number"/>
<form:errors path="ContactNumber" cssStyle="color:red" ></form:errors>
</div>

<button type="button" onclick="slide1()" class="btn btn-info">Next<span class="glyphicon glyphicon-triangle-right"></span></button>
<button type="reset" class="btn">Reset</button>
</div>

<div class="container-fluid" id="lbsform" style="margin-top:55px;">

<div class="row">


<div class="col-lg-4">
<h1 id="second" style="color:Black;font-family:Microsoft Sans Serif;font-size:28">Login Details</h1>


<div class="form-group">
<form:label class="control-label" path="user.Username">User Name</form:label>
<form:input path="user.Username"  class="form-control" style="width:50%" placeholder="Username" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="user.Password">Password</form:label>
<form:password path="user.Password" class="form-control" style="width:50%" placeholder="Password" required="required"/>
</div>

<div>
<button type="button" class="btn btn-primary" onclick="back()"><span class="glyphicon glyphicon-triangle-left"></span>Back</button>
</div>
</div><!-- first column end -->


<div class="col-lg-4">
<h1 id="third" style="color:Black;font-family:Microsoft Sans Serif;font-size:28">Billing Details</h1>

<div class="form-group">
<form:label class="control-label" path="billingaddress.ApartmentNumber">Apartment number</form:label>
<form:input path="billingaddress.ApartmentNumber"  class="form-control" style="width:50%" placeholder="Apartment number" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="billingaddress.StreetName">Street Name</form:label>
<form:input path="billingaddress.StreetName"  class="form-control" style="width:50%" placeholder="Street" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="billingaddress.City">City</form:label>
<form:input path="billingaddress.City"  class="form-control" style="width:50%" placeholder="City" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="billingaddress.State">State</form:label>
<form:input path="billingaddress.State"  class="form-control" style="width:50%" placeholder="State" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="billingaddress.Country">Country</form:label>
<form:input path="billingaddress.Country"  class="form-control" style="width:50%" placeholder="Country" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="billingaddress.Zipcode">Zipcode</form:label>
<form:input path="billingaddress.Zipcode"  class="form-control" style="width:50%" placeholder="Zipcode" required="required"/>
</div>

<div class="form-group">
<form:label path="Tac"><form:checkbox path="Tac"  disabled="true"/>I accept Terms and conditions</form:label>
</div>

<div>
<button type="submit" class="btn btn-info">Submit</button>
<button type="reset" class="btn" >Reset</button>
</div>
</div><!-- second column end -->

<div class="col-lg-4">
<h1 id="first" style="color:Black;font-family:Microsoft Sans Serif;font-size:28">shipping Details</h1>

<div class="form-group">
<form:label class="control-label" path="shippingaddress.ApartmentNumber">Apartment number</form:label>
<form:input path="shippingaddress.ApartmentNumber"  class="form-control" style="width:50%" placeholder="Apartment number" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="shippingaddress.StreetName">Street Name</form:label>
<form:input path="shippingaddress.StreetName"  class="form-control" style="width:50%" placeholder="Street" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="shippingaddress.City">City</form:label>
<form:input path="shippingaddress.City"  class="form-control" style="width:50%" placeholder="City" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="shippingaddress.State">State</form:label>
<form:input path="shippingaddress.State"  class="form-control" style="width:50%" placeholder="State" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="shippingaddress.Country">Country</form:label>
<form:input path="shippingaddress.Country"  class="form-control" style="width:50%" placeholder="Country" required="required"/>
</div>

<div class="form-group">
<form:label class="control-label" path="shippingaddress.Zipcode">Zipcode</form:label>
<form:input path="shippingaddress.Zipcode"  class="form-control" style="width:50%" placeholder="Zipcode" required="required"/>
</div>


</div><!-- third column end -->

</div><!-- end row -->
</div><!-- container fluid end -->
</form:form>
</div>

</body>
</html>