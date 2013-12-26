userService = ($http, $config) ->
	service = {}
	service.register = (user) ->
		$http.post("#{$config.API_BASE}#{$config.USER_RESOURCE}", user)
	service

module = angular.module('stormpath.services', [])
module.factory("$userService", ["$http", "$config", userService])
