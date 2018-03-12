<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<title>Customer profile</title>
</head>
<body>	
		<h1>Add a new customer profile</h1>		
		
		
		<br>
		<br>		
		
		<form action="/customer/add/profile" method="post">
		<p>First name: <input type="text" name="firstName"></p>
		<p>Last name:<input type="text" name="lastName"></p>
		<p>email: <input type="text" name="email"></p>
		<p>Phone: <input type="text" name="phone"></p>
		<p>City: <input type="text" name="address.city"></p>
		<p>State: <input type="text" name="address.state"></p>
		<p>Country: <input type="text" name="address.country"></p>
	    <p>Zip Code: <input type="text" name="address.zipcode">	 </p>   	   		
		<input type="submit" value="Create Customer">
		
		</form>
		
		
		
		<a href="<c:url value="/customers/manage" />"> Back </a>
		
		
		
</body>
</html>