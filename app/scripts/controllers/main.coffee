((app) ->
  "use strict"

  app.controller "MainCtrl", ($scope, $http) ->

    $http.get("data/cats.json").success (data) ->
      $scope.cats = data.cats

) angular.module("CatsOfIstanbulApp")