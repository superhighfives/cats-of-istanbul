!function(){!function(a){"use strict";var b;return b=a.module("CatsOfIstanbulApp",[]),void 0!==window.pageYOffset?b.value("viewportYOffset",function(){return window.pageYOffset}):b.value("viewportYOffset",function(){return document.documentElement.scrollTop}),b.value("viewportHeight",function(){return document.documentElement.clientHeight}),b.factory("onScrollChange",["$document","viewportYOffset",function(a,b){var c,d,e,f;return f=window.requestAnimationFrame||window.mozRequestAnimationFrame||window.webkitRequestAnimationFrame||window.msRequestAnimationFrame,d=[],e=void 0,c=function(){var a,g,h;if(h=b(),h!==e)for(e=h,a=0,g=d.length;g>a;)d[a](h),a++;return void 0!==f?f(c):void 0},void 0!==f&&f(c),a.bind("scroll",c),a.bind("touchmove",c),{attach:function(a){return d.push(a)},detach:function(a){return d.splice(d.indexOf(a),1)}}}])}(angular)}.call(this),function(){!function(a){"use strict";return a.controller("MainCtrl",["$scope","$http",function(a,b){return b.get("data/cats.json").success(function(b){return a.cats=b.cats})}])}(angular.module("CatsOfIstanbulApp"))}.call(this),function(){!function(a){"use strict";return a.directive("ngMap",function(){return function(a,b,c){var d;return c.ngMap&&(d=L.mapbox.map(b[0],"superhighfives.map-6dm1u71l",{zoomControl:!1,attributionControl:!1,touchZoom:!1,doubleClickZoom:!1,scrollWheelZoom:!1,dragging:!1}),d.setView([c.ngMapLatitude,c.ngMapLongitude],c.ngMapZoom),c.ngMapMarker)?L.mapbox.markerLayer({type:"Feature",geometry:{type:"Point",coordinates:[c.ngMapLongitude,c.ngMapLatitude]},properties:{"marker-size":"small","marker-color":"#ffd57d"}}).addTo(d):void 0}})}(angular.module("CatsOfIstanbulApp"))}.call(this),function(){!function(a){"use strict";return a.directive("ngLazyload",["$document","$timeout",function(a,b){return{restrict:"A",link:function(c,d,e){return b(function(){var b,c;return c=e.ngLazyload,b=a[0].createElement("img"),b.onload=function(){return angular.isDefined(e.ngLazyloadLoadedClass)&&d.addClass(e.ngLazyloadLoadedClass),d.css({"background-image":"url("+this.src+")"})},b.src=c},1e3*e.ngLazyloadIndex)}}}])}(angular.module("CatsOfIstanbulApp"))}.call(this),function(){!function(a){"use strict";return a.directive("hero",["$document","$window","onScrollChange",function(a,b,c){return function(a,b){var d,e,f,g,h;return d=void 0,g=function(a){return 200-a},h=function(a){return Math.max(1,a)-350},e=function(a){return Math.max(0,1-a/1e3)},f=function(a){var c;return c="translate3d(0,"+g(a)+"px, "+h(a)+"px) scale(1.5)",d!==c?(d=c,b.css("-webkit-transform",c),b.css("-moz-transform",c),b.css("-ms-transform",c),b.css("-o-transform",c),b.css("transform",c),b.css("opacity",e(a))):void 0},f(0),c.attach(f)}}])}(angular.module("CatsOfIstanbulApp"))}.call(this);