// Generated by CoffeeScript 1.6.3
'use strict';
describe('Controller: DashboardCtrl', function() {
  var DashboardCtrl, scope;
  beforeEach(module('BaseApp'));
  DashboardCtrl = {};
  scope = {};
  beforeEach(inject(function($controller, $rootScope) {
    scope = $rootScope.$new();
    return DashboardCtrl = $controller('DashboardCtrl', {
      $scope: scope
    });
  }));
  return it('should attach a list of awesomeThings to the scope', function() {
    return expect(scope.awesomeThings.length).toBe(3);
  });
});
