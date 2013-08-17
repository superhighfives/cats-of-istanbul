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
        if $document[0].width > 488
          element.css "opacity", opacityCal(scale)

      setBackgroundSize 0
      onScrollChange.attach setBackgroundSize

) angular.module("CatsOfIstanbulApp")