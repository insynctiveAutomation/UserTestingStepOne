'use strict';

var app = angular.module('app');

app.service('appService', function($http) {
	
	var self = this;
	
	this.checkIfIsCreated = function(tlaIndex, callback, errorCallback){
		$http.get('https://insynctiveautomation.herokuapp.com/isPersonCreated/'+tlaIndex).success(callback).error(errorCallback);
//		$http.get('/Insynctive/isPersonCreated/'+tlaIndex).success(callback).error(errorCallback);
	}
});