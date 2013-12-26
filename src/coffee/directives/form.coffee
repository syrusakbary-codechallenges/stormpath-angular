FormDirective = ($rootScope) ->
	templateUrl: 'partials/form.html'

module = angular.module('stormpath.directives', [])
module.directive("stormpathForm", ["$rootScope", FormDirective])
