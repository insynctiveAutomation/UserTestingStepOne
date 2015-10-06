'use strict';

var app = angular.module('app', [ 'ngAnimate', 'ngCookies']);

app.controller('appController', function($cookies, $scope, $window, $interval, appService) {
	
	var self = this;
	this.started = false;
	this.loading = false;
	this.email = '';
	this.name = '';
	this.lastname = '';
	this.notification = '';
	this.tlaIndex;
	$cookies.remove('tlaIndex')
	
	/*On Create Person*/
	this.createPerson = function() {
		self.started = true;
		self.loading = true;
		appService.createPerson({name : self.name, lastName : self.lastname, email : self.email}, function(data) {
//			self.loading = false;
//			self.notification = data;
			$cookies.put('name', self.name+' '+self.lastname);
			$cookies.put('email', self.email);
			$cookies.put('tlaIndex', data.index);
			$window.location.href = '/confirmationPage';
		},
		function(data){
			self.loading = false;
			self.notification = "Fail on connection with the server, try again please."+data;
		});
	};

});