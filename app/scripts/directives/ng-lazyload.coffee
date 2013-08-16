((app) ->
  "use strict"

  app.directive "ngLazyload", ($document, $timeout) ->
    restrict: "A"
    link: (scope, element, attrs) ->
      $timeout (->
        src = attrs.ngLazyload
        img = $document[0].createElement("img")
        img.onload = ->
          element.addClass attrs.ngLazyloadLoadedClass if angular.isDefined(attrs.ngLazyloadLoadedClass)
          element.css "background-image": "url(" + @src + ")"
        img.src = src
      ), attrs.ngLazyloadIndex * 1000
      
) angular.module("CatsOfIstanbulApp")