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
<title>Customer Data</title>
</head>
<body>	
		<a href="<c:url value="/logout" />"> LogOut </a> 
		<br> 
		<br>		
		<h2>Customer data</h2>
		
		
		
		<table>
		
		<tr>
		<td>First_Name </td>
		<td>Last_Name</td>
		<td>Email </td>
		<td>Phone</td>
        <td>city</td>
        <td>State</td>	
        <td>Country</td>	
        <td>ZipCode</td>			
		</tr>
		
		<c:forEach var="customer" items="${cust}">		
		<tr>	
		<td>${customer.firstName}</td>
		<td>${customer.lastName}</td>
		<td>${customer.email}</td>
		<td>${customer.phone}</td>
		<td>${customer.address.city}</td>
		<td>${customer.address.state}</td>
		<td>${customer.address.country}</td>
		<td>${customer.address.zipcode}</td>
		</tr>
		</c:forEach>
		
		</table>
		
		
		
		<a href="<c:url value="/customers/list" />"> Back </a>
		
		
		
		
</body>
</html>