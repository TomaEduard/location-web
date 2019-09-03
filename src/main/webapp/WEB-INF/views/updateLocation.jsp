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
				<h2>Location-web Project</h2>
			</div>
		</div>
	
		<form action="updateLoc" method="post" >

			<table>
				<tbody>
				<tr>
					<td><label>Id:</label></td>
					<td><input type="text" name="id" value="${location.id}" readonly="true"/></td>
				</tr>

				<tr>
					<td><label>Code:</label></td>
					<td><input type="text" name="code" value="${location.code}"/></td>
				</tr>

				<tr>
					<td><label>Name:</label></td>
					<td><input type="text" name="name" value="${location.name}"/></td>
				</tr>

				<tr>
					<td><label>Urban:</label></td>
					<td><input type="radio" name="type" value="URBAN" ${location.type=='URBAN'?'checked':''}/>
				</td>

				<tr>
					<td><label>Rural:</label></td>
					<td><input type="radio" name="type" value="RURAL" ${location.type=='RURAL'?'checked':''}/>
				</td>

				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Save" class="save" /></td>
				</tr>

				</tbody>
				
			</table>


		</form>
		
		<div id="margin">
		
			
		</div>
	
	</body>
	
</html>