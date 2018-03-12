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
<title>Orders List</title>
</head>
<body>	


				    
				
				
		<a href="<c:url value="/logout" />"> LogOut </a> 
		<br> 
		<br>		
		
				<div align="center" style="margin-top:15px">
				
				  <table border="1">
				            <tr>
				                <td colspan="10" align="center"><h2>List of Orders</h2></td>
				            </tr>
				            <tr>
				     <td>Customer first Name</td>	
					  <td>Customer Last Name</td>       
					   <td>Order Date</td>		
					  <td>prodctName</td>
					  <td>product Type</td>
					  <td>Quanity</td>
					   <td>product price</td>
					  			   
					   
					  
		                </tr>
		                
		                  <c:forEach var="order" items="${orders}"> 
		                   <c:forEach var="orderLine" items="${order.orderLines}"> 
		                  
		                  <tr>
		    <td align="center">${orderLine.order.person.firstName}</td>
            <td align="center">${orderLine.order.person.lastName}</td>  
             <td align="center">${orderLine.order.orderDate}</td>
		  
		     <td align="center">${orderLine.product.productName}</td>
            <td align="center">${orderLine.product.productType}</td>
              <td align="center">${orderLine.quantity}</td>
             
            <td align="center">${orderLine.product.price}</td>
            
          
           		          

	    </tr>
		                   </c:forEach>
		                  </c:forEach>
		  
		  
				                
				        </table>
				    </div>
				        
				    
				    
				    
				    
				    
				    
				    
				    
				    
				    
				    
				    
				    
				    
				    
				    
				    
				    

		<br>
		
		
		<a href="<c:url value="/orders/manage" />"> Back </a>
		
		
		
		
</body>
</html>