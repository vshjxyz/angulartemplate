'use strict'

describe 'Controller: CatalogCtrl', () ->

  # load the controller's module
  beforeEach module 'BaseApp'

  CatalogCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CatalogCtrl = $controller 'CatalogCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
