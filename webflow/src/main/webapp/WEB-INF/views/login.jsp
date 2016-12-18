<%@page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="header.jsp"%>

<html>
<head>
<title>Spring Security</title>
</head>
<body>
	<%--   <h2>login Page</h2>
	<div
		style="text-align: center; padding: 30px; border: 1px solid green; width: 250px;">
		<form method="post" action="<c:url value='/login' />">
			<table>
				<tr>
					<td colspan="2" style="color: red">${message}</td>
				</tr>
				<tr>
					<td>User name:</td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Login" /></td>
				</tr>
			</table>
		</form>
	</div> --%>
 
	 <div class="container">
		<div class="row">
			<h2>Login Page</h2>

			<fieldset>
					  <form method="post" action="<c:url value='/login' />">

					<!-- Form Name -->
					<legend>Login Here</legend>
					<div class="alert alert-error">
						<a data-dismiss="alert" href="#" style="color: red"></a>${message}
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="username">User
							Name:</label>
						<div class="col-md-3">
							<input type="text" name="username"
								placeholder="Enter your User Name" class="form-control input-md"
								type="text"> <span class="help-block"> </span>
						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="password">Password:</label>
						<div class="col-md-3">
							<input type="text" name="password"
								placeholder="Enter your Password" class="form-control input-md"
								type="text"> <span class="help-block"> </span>
						</div>
					</div>

					<!--  
                     <td colspan="2"><input type="submit" value="Login" /></td>
                  </tr>
 
	  <div class="control-group">
      Button
 -->
					<div class="controls">
						<!--         <button class="btn btn-success">Login</button>
 -->
						<button type="submit" class="btn btn-info btn-block" value="Login">Login</button>

					</div>
				</form>

			</fieldset>

		</div>
	</div>


	<%-- <div class="container">
    <div class="row">
		<div class="span4 offset4 well">
					  <form method="post" action="<c:url value='/login' />">
		
			<legend>Login</legend>
			
          	<div class="alert alert-error">
                <a class="close" data-dismiss="alert" href="#">×</a>${message}
            </div>
			<form method="POST" action="" accept-charset="UTF-8">
			<input type="text" id="username" class="span4" name="username" placeholder="Username">
			<input type="password" id="password" class="span4" name="password" placeholder="Password">
           
			<button type="submit" name="submit" class="btn btn-info btn-block" value="Login"></button>
			</form>    
		</div>
	</div>
</div> --%>
</body>
</html>