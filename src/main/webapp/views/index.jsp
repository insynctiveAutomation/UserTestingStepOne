<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en" ng-app="app">
<head>
<meta charset="utf-8">
<title>User Testing First Step -  Insynctive</title>
<head>
  
<!-- JQUERY -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/node_modules/jquery/dist/jquery.min.js"></script>

<!-- Angular Dependents -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/node_modules/angular/angular.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/node_modules/angular-animate/angular-animate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/node_modules/angular-cookies/angular-cookies.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/node_modules/angular-ui-bootstrap/ui-bootstrap-tpls.js"></script>

<!-- My CSS --> 

<!-- My Angular App  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app/appController.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app/appService.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app/appDirectives.js"></script>


</head>

<body data-ng-controller="appController as appCtrl">
	<div ng-if="appCtrl.loading">
		<img alt="loading" src="${pageContext.request.contextPath}/resources/gif/loader.gif" ng-if="appCtrl.loading">
		<span> We are creating your account...</span><br/>
	</div>
	<form ng-submit="appCtrl.createPerson()" class="form-signin" name="sendTest">
		<div ng-if="!appCtrl.started">
			<input placeholder="Enter your Name" type="text" ng-model="appCtrl.name"></input>
			<input placeholder="Enter your Last Name" type="text" ng-model="appCtrl.lastname"></input>
			<input placeholder="Enter your Email" type="text" ng-model="appCtrl.email"></input>
			<button ng-disabled="" class="" type="submit">Create Person</button>
		</div>
		<div>
			<span>{{appCtrl.notification}}</span>
		</div>
	</form>
</body>
</html>