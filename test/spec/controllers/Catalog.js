// Generated by CoffeeScript 1.6.3
'use strict';
describe('Controller: CatalogCtrl', function() {
  var CatalogCtrl, scope;
  beforeEach(module('BaseApp'));
  CatalogCtrl = {};
  scope = {};
  beforeEach(inject(function($controller, $rootScope) {
    scope = $rootScope.$new();
    return CatalogCtrl = $controller('CatalogCtrl', {
      $scope: scope
    });
  }));
  return it('should attach a list of awesomeThings to the scope', function() {
    return expect(scope.awesomeThings.length).toBe(3);
  });
});