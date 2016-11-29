<html>
<!DOCTYPE html>
<html lang="en">
  <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
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
   
      .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 55%;
      margin: auto;
  }
     #custom-search-form {
        margin:0;
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
 
    .search-query:focus + button {
        z-index: 3;   
    }
    
      </style>
    
 </head>
 
 <body> 
  <div class="container">
  <center><h3>GamesGround</h3></center>
</div> 
   
 <nav class="navbar navbar-inverse navbar-static-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">GamesGround</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">Games Platform</a></li>
			<li><a href="#">Accessories</a></li>
		</ul>
		
  <ul class="nav navbar-nav">
        <li class="dropdown">  
           <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Catogories <span class="caret"></span></a>
   
         <!--  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Categories
    <span class="caret"></span></button>
   -->  <ul class="dropdown-menu">
      <c:forEach items="${categoryList}" var="user">
       <li> <a href="allproduct?val=${user.categoryname}">${user.categoryname}</a></li>
     </c:forEach>
     </ul>
     </li>
     </ul>
    
     
		<ul class="nav navbar-nav navbar-right">
			<li><a href="register"><span class="glyphicon glyphicon-user"></span>
					Sign up</a></li>
			<li><a href="Login"><span class="glyphicon glyphicon-login"></span>
					Login</a></li>
            <li><a href="product"><span class="glyphicon glyphicon-product"></span>
					Product</a></li>
					</ul>
					
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
			
		

