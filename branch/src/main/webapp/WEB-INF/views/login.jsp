<%@page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="header.jsp"%>

<html>
<head>
<title>Spring Security</title>
</head>
<body>
	
	 <div class="container">	 
		<div class="row">

			<fieldset>
					  <form method="post" action="<c:url value='/login' />">
	  		<legend>Login Here</legend>

					<!-- Form Name -->
					<div class="alert alert-error">
						<a data-dismiss="alert" href="#" style="color: red"></a>${message}
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-7 control-label" for="username">User
							Name:</label>
						<div class="col-md-7">
							<input type="text" name="username"
								placeholder="Enter your Name" class="form-control input-md"
								type="text"> <span class="help-block"> </span>
						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-7 control-label" for="password">Password:</label>
						<div class="col-md-7">
							<input type="password" name="password"
								placeholder="Enter your Password" class="form-control input-md"
								type="password"> <span class="help-block"> </span>
						</div>
					</div>

					
					<div class="controls">
						       <button type="submit" class="btn btn-success" value="Login">Login</button>


					</div>
				</form>

			</fieldset>

		</div>
	</div>
</body>
</html>