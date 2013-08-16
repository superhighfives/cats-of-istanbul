((app) ->
  "use strict"

  app.directive "hero", ($document, $window, onScrollChange) ->
    (scope, element) ->
      oldString = undefined
      yCalc = (scale) ->
        200 - scale

      zCalc = (scale) ->
        Math.max(1, scale) - 350

      opacityCal = (scale) ->
        Math.max 0, 1 - scale / 1000

      setBackgroundSize = (scale) ->
        translateString = "translate3d(0," + yCalc(scale) + "px, " + zCalc(scale) + "px) scale(1.5)"
        if oldString isnt translateString
          oldString = translateString
          element.css "-webkit-transform", translateString
          element.css "-moz-transform", translateString
          element.css "-o-transform", translateString
          element.css "transform", translateString
          element.css "opacity", opacityCal(scale)

      setBackgroundSize 0
      onScrollChange.attach setBackgroundSize

) angular.module("CatsOfIstanbulApp")