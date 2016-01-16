
#= require angular/angular.min.js
#= require angular-ui-router/release/angular-ui-router.min.js


angular
.module 'dialogRoutesLoFi', [ 'ui.router' ]


.config ( $locationProvider ) ->
  $locationProvider.html5Mode true


.config ( $stateProvider, $urlRouterProvider ) ->

  $stateProvider

    .state 'calendar',
      url: '/calendar'
      templateUrl: 'templates/calendar.html'

    .state 'messages',
      url: '/messages'
      templateUrl: 'templates/messages.html'

    .state 'dossier',
      url: '/dossier'
      templateUrl: 'templates/dossier.html'

  $urlRouterProvider.otherwise '/calendar'

