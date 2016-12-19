<html>
<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<head>
<title>Games Ground</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/jquery/jquery-1.12.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>

<style>

/*  body {
    background-image: url(resources/images/maxresdefault.jpg);
    background-size:cover;
    background-repeat:no-repeat;
    } */
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 55%;
	margin: auto;
}

#custom-search-form {
	margin: 0;
	margin-top: 5px;
	padding: 0;
}

#custom-search-form .search-query {
	padding-right: 3px;
	padding-right: 4px \9;
	padding-left: 3px;
	padding-left: 4px \9;
	/* IE7-8 doesn't have border-radius, so don't indent the padding */
	margin-bottom: 0;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

#custom-search-form button {
	border: 0;
	background: none;
	/** belows styles are working good */
	padding: 2px 5px;
	margin-top: 2px;
	position: relative;
	left: -28px;
	/* IE7-8 doesn't have border-radius, so don't indent the padding */
	margin-bottom: 0;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

.search-query:focus+button {
	z-index: 3;
}
</style>

</head>

<body>

	<div class="container">
		<%--   <center><h3>GamesGround</h3></center>
 --%>
	</div>

	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#" style="color: white">GamesGround</a>
			</div>
			<ul class="nav navbar-nav">

				<li><a href="index">Home</a></li>
				<li><a href="#">Accessories</a></li>
				<li><a href="prolist"><span
						class="glyphicon glyphicon-product"></span>View All</a></li>
				
			</ul>

			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Categories <span class="caret"></span></a> <!--  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Categories
    <span class="caret"></span></button>
   -->
					<ul class="dropdown-menu">
						<c:forEach items="${categoryList}" var="user">
							<li><a href="allproduct?val=${user.categoryname}">${user.categoryname}</a></li>
						</c:forEach>
					</ul></li>
			</ul>
               
			<ul class="nav navbar-nav navbar-right">
				<li><a href="register" style="color: white"><span
						class="glyphicon glyphicon-user"></span> Sign up</a></li>
				<sec:authorize access="isAnonymous()">
					<li><a href="login" style="color: white"><span
							class="glyphicon glyphicon-login"></span> Login</a></li>
				</sec:authorize>
				
                 <c:if test="${pageContext.request.userPrincipal.name != null}">
                 <li class="active"><a><b>Welcome: ${pageContext.request.userPrincipal.name}</b></a></li>
                 </c:if>
                                   
				<sec:authorize access="hasAnyRole('ROLE_USER','ROLE_ADMIN')">
					<li><a href="<c:url value="logout" />" style="color: white">Logout</a><span
						class="glyphicon glyphicon-logout"></span>
				</sec:authorize>


			</ul>
 <%-- <div class="modal fade" id="myModal3" role="dialog">
        <div class="modal-dialog">
       <div class="modal-header" style="padding:35px 50px;">
           <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
                 <div class="modal-body" style="padding:40px 50px;">
                 <h2>${message}</h2>
        
                 </div>`
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
      </div>
    </div>  
     <c:if test="${message=='Logged Out successfully, login again to continue !'}">
  <script type="text/javascript">
    $(window).load(function(){
        $('#myModal3').modal('show'); });
</script>
 </c:if>  --%>

			<div class="container">
				<div class="row">
					<div class="span12">
						<form id="custom-search-form"
							class="form-search form-horizontal pull-right">
							<div class="input-append span16">
								<input type="text" class="search-query" placeholder="Search">
								<button type="submit" class="btn">
									<i class="icon-search"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</nav>
	