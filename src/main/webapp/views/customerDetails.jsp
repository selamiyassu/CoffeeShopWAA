<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
</head>
<body>

	<form:form modelAttribute="order" action="${flowExecutionUrl}">

		<table width="30%" border="0" cellspacing="3" cellpadding="1">
		
		    
			<tr>
				<td><spring:message code="firstName" /></td>
				<td><form:input path="person.firstName" /></td>
				<td><form:errors path="person.firstName" cssClass="error" /></td>
			</tr>
			<tr>
				<td><spring:message code="lastName" /></td>
				<td><form:input path="person.lastName" /></td>
				<td><form:errors path="person.lastName" cssClass="error" /></td>
			</tr>
			<tr>
				<td><spring:message code="email" /></td>
				<td><form:input path="person.email" /></td>
				<td><form:errors path="person.email" cssClass="error" /></td>
			</tr>
			<tr>
				<td><spring:message code="phone" /></td>
				<td><form:input path="person.phone" /></td>
				<td><form:errors path="person.phone" cssClass="error" /></td>
			</tr>
			<tr>
			
				<td><spring:message code="city" /></td>
				<td><form:input path="person.address.city" /></td>
				<td><form:errors path="person.address.city" cssClass="error" /></td>
			</tr>
			<tr>
				<td><spring:message code="state" /></td>
				<td><form:input path="person.address.state" /></td>
				<td><form:errors path="person.address.state" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td><spring:message code="country" /></td>
				<td><form:input path="person.address.country" /></td>
				<td><form:errors path="person.address.country" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td><spring:message code="zip" /></td>
				<td><form:input path="person.address.zipcode" /></td>
				<td><form:errors path="person.address.zipcode" cssClass="error" /></td>
			</tr>
		</table>
		<table width="20%" border="0" cellspacing="3" cellpadding="1">
			<tr>
				<td>
					<button type="submit" id="next" name="_eventId_next">
						<spring:message code="next" />
					</button>
				</td>
				<td>
					<button type="submit" id="cancel" name="_eventId_cancel">
						<spring:message code="cancel" />
					</button>
				</td>
			</tr>
		</table>

	</form:form>
</body>
</html>