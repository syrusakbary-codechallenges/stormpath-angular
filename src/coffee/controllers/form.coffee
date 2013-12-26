FormCtrl = ($scope, $userService) ->
	$scope.submit = (user) ->
		promise = $userService.register($scope.user)
		promise.success( ->
			$scope.sended = true
		).error( ->
			console.log 'Cannot load the user resource'
		)
	$scope.reset = ->
		$scope.sended = false
		$scope.user = {}

module = angular.module('stormpath.controllers', [])
module.controller("FormCtrl", ["$scope", "$userService", FormCtrl])
