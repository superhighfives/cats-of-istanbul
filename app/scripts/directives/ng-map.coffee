((app) ->
  "use strict"

  app.directive "ngMap", ->
    (scope, element, attrs) ->
      
      if attrs.ngMap
        map = L.mapbox.map element[0], 'superhighfives.map-6dm1u71l', {
          zoomControl: false,
          attributionControl: false,
          touchZoom: false,
          doubleClickZoom: false,
          scrollWheelZoom: false,
          dragging: false
        }
        map.setView [attrs.ngMapLatitude, attrs.ngMapLongitude], attrs.ngMapZoom

        if attrs.ngMapMarker
          L.mapbox.markerLayer(
            type: "Feature"
            geometry:
              type: "Point"
              coordinates: [attrs.ngMapLongitude, attrs.ngMapLatitude]
            properties:
              "marker-size": "small"
              "marker-color": "#ffd57d"
          ).addTo map

) angular.module("CatsOfIstanbulApp")