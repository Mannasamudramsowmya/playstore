
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view</title>
</head>
<body>
	<center>

		<div style="color: teal; font-size: 30px">Product Details</div>
	</center>
	<br>
	<br>
	<br>

	<table border="8">
		<!-- <tr style="background-color: teal; color: white; text-align: center;"
				height="40px">
 -->
		<th>Product ID</th>
		<th>Product name</th>
		<th>Product quantity</th>
		<th>Product Description</th>
		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.productid}</td>
				<td>${product.productname}</td>
				<td>${product.productquantity}</td>
				<td>${product.productdescription}</td>
				<td><a href=product>Edit</a> <!-- 				<td><a href=delete>Delete</a>
 -->
			</tr>
		</c:forEach>
	</table>


	<%-- <center>

		<div style="color: teal; font-size: 30px">Product Details</div>
	</center>
	<br>
	<br>
	<br>
	<c:if test="${!empty productList}">
		<table border="1" bgcolor="black" width="600px">
			<tr style="background-color: teal; color: white; text-align: center;"
				height="40px">

				<td>product ID</td>
				<td>product Name</td>
				<td>product Quantity</td>
				<td>product Description</td>

			</tr>
			<c:forEach items="${productList}" var="user">
				<tr
					style="background-color: white; color: black; text-align: center;"
					height="30px">

					<td><c:out value="${product.productid}" /></td>
					<td><c:out value="${product.productname}" /></td>
					<td><c:out value="${product.productquantity}" /></td>
					<td><c:out value="${product.productdescription}" /></td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
 --%>
</body>
</html>




