<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products List</title>
</head>
<body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular.min.js">      </script>
<script>
 angular.module('myApp', [])
 .controller('MyController', ['$scope', '$http', function($scope, $http) {
	 alert("its controller");
    $http.get("game").success(function(data){
    	alert("it gets method page")
         $scope.person = data;
    });
  
 }]);
</script>
<div class="container" ng-app="myApp" ng-controller="MyController">
 <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>

        <input type="text" class="form-control" placeholder="Search " ng-model="searchFish">

      </div>      
    </div>
  </form>

<%-- 	<c:forEach items="${productList}" var="user">--%>	
   <div ng-repeat="role in person | filter:searchFish">

		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<img
							src="<c:url value='/resources/images/{{role.imagename}}.jpg'/>"
							class="img-resonsive">
						<div class="producttitle">
							<a href="#">${user.productname}</a>
						</div>
						<div class="productprice">
							<div class="pull-right">
								<a href="#" class="btn btn-danger btn-xs" role="button">BUY</a>
							</div>
						</div>
						<div class="caption">
							<p>Lorem ipsum donec id elit non mi porta gravida at eget
								metus.</p>
						</div>
						<a href="#">
							<button type="button" class="btn btn-default">Add to
								cart</button>
						</a>

					</div>
				</div>
			</div>
		</div>

</div>
	</div>
</body>
</html>