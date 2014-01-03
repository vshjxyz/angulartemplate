'use strict'

angular.module('BaseApp.controllers')
    .controller 'NavigatorCtrl', ($scope, $state) ->
        $scope.awesomeThings = [
            'HTML5 Boilerplate'
            'AngularJS'
            'Karma'
        ]

        $state.go('app.dashboard')
