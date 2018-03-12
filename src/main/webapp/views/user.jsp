<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
<title>User page</title>
</head>
<body>
<div style="color:Blue">
<security:authorize access="isAuthenticated()">
   User Name: <security:authentication property="principal.username" /> 
</security:authorize>

</div>
 <br>
	
	
	   <a href="<c:url value="/logout" />">logout </a>
	   <br>
	     <br>
	     <h1>Welcome ${userData.firstName} ${userData.lastName}</h1> 
	   	
	
	<a href="<c:url value="/user/profile" />">Your Profile</a><br>
	<a href="<c:url value="/spring-flow" />">Order here </a> <br>
		
		
		
		
		
</body>
</html>