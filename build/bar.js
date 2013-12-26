(function() {
  var FormCtrl, FormDirective, configFn, module, modules, userService;

  configFn = function() {};

  modules = ['stormpath.controllers', 'stormpath.services', 'stormpath.directives'];

  this.app = angular.module('stormpath', modules);

  this.app.factory("$config", function() {
    return {
      API_BASE: '',
      USER_RESOURCE: 'users.json'
    };
  });

  this.app.config([configFn]);

  FormCtrl = function($scope, $userService) {
    $scope.submit = function(user) {
      var promise;
      promise = $userService.register($scope.user);
      return promise.success(function() {
        return $scope.sended = true;
      }).error(function() {
        return console.log('Cannot load the user resource');
      });
    };
    return $scope.reset = function() {
      $scope.sended = false;
      return $scope.user = {};
    };
  };

  module = angular.module('stormpath.controllers', []);

  module.controller("FormCtrl", ["$scope", "$userService", FormCtrl]);

  FormDirective = function($rootScope) {
    return {
      templateUrl: 'partials/form.html'
    };
  };

  module = angular.module('stormpath.directives', []);

  module.directive("stormpathForm", ["$rootScope", FormDirective]);

  userService = function($http, $config) {
    var service;
    service = {};
    service.register = function(user) {
      return $http.post("" + $config.API_BASE + $config.USER_RESOURCE, user);
    };
    return service;
  };

  module = angular.module('stormpath.services', []);

  module.factory("$userService", ["$http", "$config", userService]);

}).call(this);
