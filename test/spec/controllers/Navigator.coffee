'use strict'

describe 'Controller: NavigatorCtrl', () ->

  # load the controller's module
  beforeEach module 'BaseApp'

  NavigatorCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    NavigatorCtrl = $controller 'NavigatorCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
