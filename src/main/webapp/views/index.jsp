<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en" ng-app="app">
<head>
    <meta charset="utf-8">
    <title>User Testing First Step - Insynctive</title>

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
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>
    </head>

    <body data-ng-controller="appController as appCtrl">
        <div class="row">
            <div class="col s10 offset-s1 center">
           	 	<img class="col offset-s2" alt="" src="${pageContext.request.contextPath}/resources/img/logo.png">
                <div class="col s4 offset-s4" ng-if="appCtrl.loading">
                    <img alt="loading" src="${pageContext.request.contextPath}/resources/gif/loader.gif" ng-if="appCtrl.loading">
                    <span> We are creating you an account...</span>
                    <br/>
                </div>
                <div class="col s8 offset-s2">
                    <form ng-submit="appCtrl.createPerson()" class="form-signin" name="sendTest">
                        <div ng-if="!appCtrl.started">
                            <h4>In order to start testing you need to register so we can send you an email invitation with first login instructions. Enter your First name, Last Name <b>(Fake or real)</b> and a valid email address and wait for the invitation to reach the provided email address</h4>
                            <div class="col s6 offset-s3 center">
                                <div class="col s12">
                                    <input placeholder="Enter your First Name" type="text" ng-model="appCtrl.name"></input>
                                </div>
                                <div class="col s12">
                                    <input placeholder="Enter your Last Name" type="text" ng-model="appCtrl.lastname"></input>
                                </div>
                                <div class="col s12">
                                    <input placeholder="Enter your Email" type="email" ng-model="appCtrl.email"></input>
                                </div>
                                <div class="col s6 offset-s3">
                                    <button ng-disabled="" class="" type="submit">Submit</button>
                                </div>
                            </div>
                        </div>
                        <div class="col s8 offset-s2">
                           <h3>{{appCtrl.notification}}</h3>
                           {{appCtrl.failData}}
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>

</html>