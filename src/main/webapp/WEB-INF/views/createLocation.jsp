<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
	
		<form action="saveLoc" method="post" >

<%--				Id: <input type="text" name="id" />--%>
<%--				Code: <input type="text" name="code" />--%>
<%--				Name: <input type="text" name="name" />--%>

<%--				Type: Urban <input type="radio" name="type" />	--%>
<%--					  Rural <input type="radio" name="type" />	--%>
<%--					  --%>
<%--				<input type="submit" value="save" />--%>

			<table>
				<tbody>
				<tr>
					<td><label>Id:</label></td>
					<td><input type="text" name="id"/></td>
				</tr>

				<tr>
					<td><label>Code:</label></td>
					<td><input type="text" name="code"/></td>
				</tr>

				<tr>
					<td><label>Name:</label></td>
					<td><input type="text" name="name"/></td>
				</tr>

				<tr>
					<td><label>Urban:</label></td>
					<td><input type="radio" name="type" value="URBAN"/>
				</td>

				<tr>
					<td><label>Rural:</label></td>
					<td><input type="radio" name="type" value="RURAL"/>
				</td>

				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Save" class="save" /></td>
				</tr>

				</tbody>
				
				
			</table>


		</form>
		
		<div id="margin">
		
			<br><br>
			
			<a href="displayLocations">View All </a>
			
			<br><br>
			
			${msg}
			
		</div>
		
	
	</body>
	
</html>