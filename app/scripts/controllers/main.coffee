((app) ->
  "use strict"

  app.controller "MainCtrl", ($scope, $http) ->

    $http.get("data/cats.json").success (data) ->
      $scope.cats = data.cats
      console.log $scope.cats

) angular.module("CatsOfIstanbulApp")