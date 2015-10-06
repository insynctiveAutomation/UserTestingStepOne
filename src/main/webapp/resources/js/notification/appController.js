'use strict';

var app = angular.module('app', [ 'ngAnimate', 'ngCookies']);

app.controller('appController', function($cookies, $scope, $window, $interval, appService) {
	
	var self = this;
	this.notification = '';

	/* Intervar 3 segs */
	$interval(function() {
		if($cookies.get('tlaIndex')){
			appService.checkIfIsCreated($cookies.get('tlaIndex'), function(data){
				if(data.status){
					self.notification = "You can check your Inbox";
					$cookies.remove('tlaIndex');
				} else {
					self.notification = "";
				}
			}, function(){
				self.notification = "";
				$cookies.remove('tlaIndex');
			});
		}
	}, 3000);
	
});