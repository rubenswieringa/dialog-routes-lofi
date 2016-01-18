
#= require angular/angular.min.js
#= require angular-ui-router/release/angular-ui-router.min.js
#= require ui-router-extras/release/ct-ui-router-extras.min.js
#= require_self
#= require clear_replacing_sticky_states

angular
.module 'dialogRoutesLoFi', [ 'ui.router', 'ct.ui.router.extras' ]


.config ( $locationProvider ) ->
  $locationProvider.html5Mode true


.config ( $stateProvider, $urlRouterProvider ) ->

  $stateProvider

    .state 'calendar',
      url: '/calendar'
      templateUrl: 'templates/calendar.html'
      sticky: true

    .state 'calendar.add',
      url: '/add'
      views:
        'dialog@': {
          templateUrl: 'templates/calendar_dialog.html'
        }

    .state 'messages',
      url: '/messages'
      templateUrl: 'templates/messages.html'
      sticky: true

    .state 'messages.add',
      url: '/add'
      views:
        'dialog@': {
          templateUrl: 'templates/messages_dialog.html'
        }

    .state 'dossier',
      url: '/dossier'
      templateUrl: 'templates/dossier.html'
      sticky: true

    .state 'letter',
      url: '/letter'
      views:
        'dialog@': {
          templateUrl: 'templates/letter_dialog.html'
        }

  $urlRouterProvider.otherwise '/calendar'

