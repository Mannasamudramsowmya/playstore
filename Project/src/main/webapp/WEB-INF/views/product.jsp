<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop</title>
<!-- <style>
body
{
background-image: url(resources/images/maxresdefault.jpg);
background-size:cover;
background-repeat:no-repeat;
}
</style> -->
</head>
<body>

<%-- <div class="container">
		<h2>Product Details</h2>

		<div>
			<form:form action="product" method="POST" commandName="product"
				enctype="multipart/form-data">





				<div class="form-group">
					<form:label class="control-label col-sm-2" path="productid">ID</form:label>
					<div class="col-sm-10">
						<form:input path="productid" class="form-control" required="true"
							placeholder="Product Id" />
						<form:errors path="productid" cssClass="error" />
					</div>
				</div>


				<div class="form-group">
					<form:label class="control-label col-sm-2" path="productname">Name</form:label>
					<div class="col-sm-10">
						<form:input type="text" path="productname" class="form-control"
							required="true" placeholder="Enter Product Name" />
						<form:errors path="productname" cssClass="error" />
					</div>
				</div>


				<div class="form-group">
					<form:label class="control-label col-sm-2" path="productquantity">Quantity</form:label>
					<div class="col-sm-10">
						<form:input path="productquantity" class="form-control"
							required="true" placeholder="Enter Product Qty" />
						<form:errors path="productquantity" cssClass="error" />
					</div>
				</div>


				<div class="form-group">
					<form:label class="control-label col-sm-2"
						path="productdescription">Description</form:label>
					<div class="col-sm-10">
						<form:input path="productdescription" class="form-control"
							required="true" placeholder="Product Description" />
						<form:errors path="productdescription" cssClass="error" />
					</div>
				</div>




				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-default" name="action"
							value="Add" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default" name="action"
							value="Edit">Edit</button>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default" name="action"
							value="Delete">Delete</button>
					</div>
				</div>

				
					File to upload: <input type="file" name="file">
					 Name: <input type="text" name="name">
					 <input type="submit" value="Upload"> Press here to upload the file!
				
<!-- <h3>
File name : "<strong> $ {message}</strong>
</h3> -->

			</form:form>
			
		</div>
	</div>
${message}
 --%>



<div class="container">
<div class="row">
<div class="panel panel-primary">
<div class="panel-body">
<div class="form-group">
	
	<h1>Product Data</h1>
	<!-- <select>
  <optgroup label="Swedish Cars">
    <option value="volvo">Volvo</option>
    <option value="saab">Saab</option>
  </optgroup>
  <optgroup label="German Cars">
    <option value="mercedes">Mercedes</option>
    <option value="audi">Audi</option>
  </optgroup>
</select> -->
	<form:form action="product.do" method="POST" commandName="product" enctype="multipart/form-data">
<table>
			
			<tr>
				
				<td><form:label path="productid">id</form:label></td>
				<td><form:input path="productid" /></td>
			</tr>
			<tr>
				<td><form:label path="productname">Name</form:label></td>
				<td><form:input path="productname"  /></td>
			</tr>
			<tr>
				<td><form:label path="productquantity">quantity</form:label></td>
				<td><form:input path="productquantity"  /></td>
			</tr>
			<tr>
				<td><form:label path="productdescription">Description</form:label></td>
				<td><form:input path="productdescription"  /></td>
			</tr>	
			<tr>
				<td><form:label path="imagename">Image</form:label></td>
				<td><form:input path="imagename"  /></td>
			</tr>
			<tr>
				<td><form:label path="categoryname">CategoryName</form:label></td>
 			 	<td> <form:input path="categoryname"  /></td>
 			    <form:select path="categoryname"  class="form-control">
 			
 				<c:forEach items="${categoryList}" var="user">
				<form:option value="${user.categoryname}">${user.categoryname}</form:option>
				</c:forEach>
				</form:select>
				
				
 				</tr>
				
            <tr>
				<td colspan="2"><input type="submit" name="action" value="Add" />
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="action" value="Edit" />
			</tr>
		    <tr>
				<td colspan="2"><input type="submit" name="action" value="Delete" />
			</tr>	
			<tr>
				<td colspan="2"><input type="submit" name="action" value="Search" />
			</tr>	
		</table>
			File to upload: <input type="file" name="file">
					 Name: <input type="text" name="name">
					 <!-- <input type="submit" value="Upload"> --> Press here to upload the file!
						
	</form:form>
	</div>
	</div>
	</div>
	</div>
	</div> 
<%-- 			<img src="<c:url value='resources/images/down.jpg'/>"alt="down" class="img-resonsive"/>
 --%>	
</body>
</html>