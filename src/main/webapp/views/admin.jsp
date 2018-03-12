<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

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
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />s
<title>Admin User</title>
</head>
<body>
<security:authorize access="isAuthenticated()">
   User Name: <security:authentication property="principal.username" /> 
</security:authorize>
	<h1>Admin User's Page</h1> <a href="<c:url value="/logout" />">logout </a>	
		
	  <br>
	  <br>
	  
	   	
	<a href="<c:url value="/products/manage" />">Manage Products</a> <br>
	<a href="<c:url value="/customers/manage" />">Manage Customers</a><br>	
	<a href="<c:url value="/orders/manage" />">Manage orders </a> <br>
	
		
		
</body>
</html>