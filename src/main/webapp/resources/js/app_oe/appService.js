'use strict';

var app = angular.module('app');

app.service('appService', function($http) {
	
	var self = this;
	
	this.createPerson = function(data, callback, errorCallback) {
		$http.post('https://insynctiveautomation.herokuapp.com/start/OE',data).success(callback).error(errorCallback);
//		$http.post('/Insynctive/start/',data).success(callback).error(errorCallback);
	};
});