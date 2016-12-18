<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop</title>

</head>
<body>
	<%-- 		<div class="container">
		<div class="row">
		<div class="panel panel-primary">
		
        <div class="panel-body">
		
		<div class="form-group">
		
			<h2>Registration Form</h2>

			
			<form:form action="register.do" method="POST" commandName="register">
		<table>
			
			<tr>
				
				<td><form:label path="id">Register ID</form:label></td>
				<td><form:input path="id" /></td>
			</tr>
	 		<tr>
				<td><form:label path="firstname">Register First name</form:label></td>
				<td><form:input path="firstname"  /></td>
				<td><form:errors path="firstname" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="lastname">Register Last Name</form:label></td>
				<td><form:input path="lastname"  /></td>
				<td><form:errors path="lastname" cssClass="error" /></td>
				
			</tr>
			<tr>
				<td><form:label path="mailid">Register mail id</form:label></td>
				<td><form:input path="mailid"  /></td>
				<td><form:errors path="mailid" cssClass="error" /></td>
		
			</tr>
			<tr>
				<td><form:label path="mobile">Register mobile</form:label></td>
				<td><form:input path="mobile" /></td>
				<td><form:errors path="mobile" cssClass="error" /></td>
				
			</tr>
			<tr>
				<td><form:label path="username">Register user name</form:label></td>
				<td><form:input path="username" /></td>
				<td><form:errors path="username" cssClass="error" /></td>
				
			</tr>
			<tr>
				<td><form:label path="password">Register password</form:label></td>
				<td><form:input path="password"  /></td>
				<td><form:errors path="password" cssClass="error" /></td>
				
			</tr>
			<tr>
				<td><form:label path="repassword">Register re-password</form:label></td>
				<td><form:input path="repassword"  /></td>
				<td><form:errors path="repassword" cssClass="error" /></td>
				
			</tr>
			<tr>
				<td><form:label path="address">Register address</form:label></td>
				<td><form:input path="address"  /></td>
				<td><form:errors path="address" cssClass="error" /></td>
				
				
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="action" value="register" />
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="action" value="Edit" />
			</tr>
		   	</table>
	
   </form:form>

 </div>
 </div>
  </div>
</div> 
</div>
 --%>
	<div class="container">
		<div class="row">
			<h2>Registration Form</h2>
			<form:form action="register.do" method="POST" commandName="register">

				<form class="form-horizontal">
					<fieldset>

						<!-- Form Name -->
						<legend>Register Here</legend>

						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-4 control-label" path="id">Register ID:</form:label>
							<div class="col-md-4">
								<form:input id="textinput" path="id" placeholder="Enter your ID"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-4 control-label" path="name">Name:</form:label>
							<div class="col-md-4">
								<form:input id="textinput" path="name"
									placeholder="Insert your Name" class="form-control input-md"
									required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-4 control-label" path="mailid">Email ID:</form:label>
							<div class="col-md-4">
								<form:input id="textinput" path="mailid"
									placeholder="Insert your Mail ID" class="form-control input-md"
									required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-4 control-label" path="password">Password:</form:label>
							<div class="col-md-4">
								<form:input id="textinput" path="password"
									placeholder="Insert your Password"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-4 control-label" path="confirmpassword">Confirm Password:</form:label>
							<div class="col-md-4">
								<form:input id="textinput" path="confirmpassword"
									placeholder="Confirm Your Password"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>

						<!--  Button 
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"> </label>
  <div class="col-md-4">
      <button id="singlebutton" name="action" class="btn btn-primary">register</button>
        <button id="singlebutton" name="action" class="btn btn-primary">Edit</button>
  
  </div>
</div> -->

						<input type="submit" name="action" value="register" /> <input
							type="submit" name="action" value="Edit" />


					</fieldset>
				</form>
			</form:form>
		</div>
	</div>

</body>

</html>
