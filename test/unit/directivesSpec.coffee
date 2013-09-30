'use strict'

describe 'component', ->
  $scope = null
  $compile = null
  element = null

  beforeEach module 'myApp'

  beforeEach module 'views/component.html'

  beforeEach inject (_$rootScope_, _$compile_) ->
    $scope = _$rootScope_
    $compile = _$compile_

  beforeEach ->
    element = $compile('<component></component>')($scope)
    $scope.$digest()

  it 'displays the counter', ->
    expect(element.find('span').text()).toBe('0')

  describe 'button', ->

    it 'increments the counter', ->
      element.find('button').triggerHandler('click')
      expect(element.find('span').text()).toBe('1')