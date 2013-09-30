'use strict'

angular.module('myApp').directive 'component', ->
  {
    scope: true
    restrict: 'E'
    templateUrl: 'views/component.html'
    link: (scope) ->
      scope.counter = 0
      scope.increaseCounter = ->
        scope.counter++
  }