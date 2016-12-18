<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp"%>

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
	<div class="container">
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
					<div class="form-group">

						<h1>Category Data</h1>
						<form:form action="category.do" method="POST"
							commandName="category">
							<table>

								<tr>

									<td><form:label path="categoryid">id</form:label></td>
									<td><form:input path="categoryid" /></td>
								</tr>
								<tr>
									<td><form:label path="categoryname">Name</form:label></td>
									<td><form:input path="categoryname" /></td>
								</tr>
								<tr>
									<td><form:label path="categoryquantity">Quantity</form:label></td>
									<td><form:input path="categoryquantity" /></td>
								</tr>

								<tr>
									<td><form:label path="categorydescription">Description</form:label></td>
									<td><form:input path="categorydescription" /></td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit" name="action"
										value="Add" />
								</tr>
								<tr>
									<td colspan="2"><input type="submit" name="action"
										value="Edit" />
								</tr>
								<tr>
									<td colspan="2"><input type="submit" name="action"
										value="Delete" />
								</tr>
								<tr>
									<td colspan="2"><input type="submit" name="action"
										value="Search" />
								</tr>
							</table>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>