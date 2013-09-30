'use strict'

describe 'MyApp', ->

  beforeEach ->
    browser().navigateTo('/index.html')

  it 'should display the title', ->
    expect(element('h1').text()).toBe('my-app')

  it 'should display a counter', ->
    expect(using('component span').binding('counter')).toBe('0')

  describe 'when the button is clicked', ->
    it 'increments the counter', ->
      element('component button').click()
      expect(using('component span').binding('counter')).toBe('1')