<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
 <html lang="en" ng-app="app">
<head>
<meta charset="utf-8">
<title>User Testing First Step -  Insynctive</title>
<head>
  
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/node_modules/jquery/dist/jquery.min.js"></script>
<!-- Angular Dependents -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/node_modules/angular/angular.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/node_modules/angular-animate/angular-animate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/node_modules/angular-cookies/angular-cookies.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/node_modules/angular-ui-bootstrap/ui-bootstrap-tpls.js"></script>

<!-- My Angular App  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/notification/appController.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/notification/appService.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/notification/appDirectives.js"></script>

<!-- My CSS --> 

<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">
<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>

</head>

<body data-ng-controller="appController as appCtrl">
	<div class="row" style="padding-top:60px;">
	<img class="col offset-s3" alt="" src="${pageContext.request.contextPath}/resources/img/logo.png">
		<div class="col s6 offset-s3">
			<h4 style="text-align: center;font-size: 1.75rem;">You successfully registered to receive an invitation email to access an HR Self Service account for testing purposes. An invitation email should reach the email address you provided in the next 1-2 minutes. Please open the email and follow the instructions</h4>
		</div>
	</div>
		<span ng-bind="appCtrl.notification"></span>
</body>
</html>