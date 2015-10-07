'use strict';

var app = angular.module('app', [ 'ngAnimate', 'ngCookies']);

app.controller('appController', function($cookies, $scope, $window, $interval, appService) {
	
	var self = this;
	this.notification = '';
	this.isCreated = false;

	/* Intervar 3 segs */
	$interval(function() {
		if($cookies.get('tlaIndex')){
			if(!self.isCreated){
				appService.checkIfIsCreated($cookies.get('tlaIndex'), function(data){
					if(data.status){
						self.notification = "You can check your Inbox";
						self.isCreated = true;
					} else {
						self.notification = "";
					}
				}, function(){
					$cookies.remove('tlaIndex');
				});
			} else {
				appService.checkIfIsJobAdded($cookies.get('tlaIndex'), function(data){
					if(data.status){
						self.notification += " - Job added.";
						$cookies.remove('tlaIndex');
					} else {
						self.notification = "";
					}
				},  function(){
					$cookies.remove('tlaIndex');
				});
			}
		}
	}, 3000);
	
});