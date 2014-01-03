'use strict'

angular.module('BaseApp', ['ngTouch', 'uiRouter', 'BaseApp.controllers'])
    .config ($stateProvider, $urlRouterProvider) ->
        $urlRouterProvider.otherwise "/app/dashboard"
        $stateProvider
            .state 'app',
                url: "/app"
                templateUrl: 'views/wrapper.html'
                controller: 'NavigatorCtrl'
            .state 'app.dashboard',
                url: "/dashboard"
                templateUrl: 'views/dashboard.html'
                controller: 'DashboardCtrl'
            .state 'app.catalog',
                url: "/catalog"
                templateUrl: 'views/catalog.html'
                controller: 'CatalogCtrl'

angular.module("uiRouter", ["ui.router"])
    .run ["$rootScope", "$state", "$stateParams", ($rootScope, $state, $stateParams) ->
        # It's very handy to add references to $state and $stateParams to the $rootScope
        # so that you can access them from any scope within your applications.For example,
        # <li ng-class="{ active: $state.includes('contacts.list') }"> will set the <li>
        # to active whenever 'contacts.list' or one of its decendents is active.
        $rootScope.$state = $state
        $rootScope.$stateParams = $stateParams
]

angular.module('BaseApp.controllers', ['BaseApp.services'])
angular.module('BaseApp.services', [])
