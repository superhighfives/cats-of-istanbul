((app) ->
  "use strict"

  app.directive "ngLazyload", ["$document", "$parse", ($document, $parse) ->
    restrict: "A"
    link: (scope, element, attrs) ->
      src = attrs.ngLazyload
      img = $document[0].createElement("img")
      img.onload = ->
        element.removeClass attrs.ngLazyloadLoadingClass if angular.isDefined(attrs.ngLazyloadLoadingClass)
        element.addClass attrs.ngLazyloadLoadedClass if angular.isDefined(attrs.ngLazyloadLoadedClass)
        element.css "background-image": "url(" + @src + ")"
      img.src = src
  ]
) angular.module("CatsOfIstanbulApp")