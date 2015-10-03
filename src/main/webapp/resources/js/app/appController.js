'use strict';

var app = angular.module('app', [ 'ngAnimate']);

app.controller('appController', function($scope, appService) {
	
	var self = this;
	this.started = false;
	this.loading = false;
	this.email = '';
	this.name = '';
	this.lastname = '';
	this.notification = '';
	
	/*On Create Person*/
	this.createPerson = function() {
		self.started = true;
		self.loading = true;
		appService.createPerson({name : self.name, lastName : self.lastname, email : self.email}, function(data) {
			self.loading = false;
			self.notification = data;
		},
		function(data){
			self.loading = false;
			self.notification = "Fail on connection with the server, try again please."+data;
		});
	};
});