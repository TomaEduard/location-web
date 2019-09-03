<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>

	<head>
	
	<meta charset="ISO-8859-1">
		<title>Create Location</title>
		
			<link type="text/css"
			  rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/style.css">

			<link type="text/css"
			  rel="stylesheet"
			  href="${pageContext.request.contextPath}/css/add-customer-style.css">
	
	</head>
	
	<body>
	
		<div id="wrapper">
			<div id="header">
				<h2>Location-web Manager</h2>
			</div>
		</div>
	
		<table>
			<tr id="container">
				<th>id</th>
				<th>Code</th>
				<th>Name</th>
				<th>Type</th> 
				<th>Action/s</th> 
				<th></th> 
			</tr>
				
			<br><br>
				
			<!-- loop over and print our customers -->
			<c:forEach var="location" items="${locations}">
				
				<tr>
					<td> ${location.id} </td>
					<td> ${location.code} </td>
					<td> ${location.name} </td>
					<td> ${location.type} </td>
					<td> <a href="deleteLocation?id=${location.id}">Delete</a> </td>
					<td> <a href="showUpdate?id=${location.id}">Update</a> </td>
				</tr>
				
			</c:forEach>
						
		</table>
		
			<br>
			
			<!-- put new button: Add Customer -->
			<input type="button" value="View Report"
				   onclick="window.location.href='generateReport'; return false;"
				   class="report-button"
			/>
			
			<!-- put new button: Add Customer -->
			<input type="button" value="Add Location"
				   onclick="window.location.href='showCreate'; return false;"
				   class="add-button"
			/>
	
	
	</body>
	
</html>