
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
      template: "calendar page"

    .state 'messages',
      url: '/messages'
      template: "messages page"

    .state 'dossier',
      url: '/dossier'
      template: "dossier page"

  $urlRouterProvider.otherwise '/calendar'

