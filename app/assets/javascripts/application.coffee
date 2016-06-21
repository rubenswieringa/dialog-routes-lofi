
#= require angular/angular.min.js
#= require angular-ui-router/release/angular-ui-router.min.js
#= require ui-router-extras/release/ct-ui-router-extras.min.js
#= require_self
#= require load_background_content
#= require clear_replacing_sticky_states

angular
.module 'dialogRoutesHiFi', [ 'ui.router', 'ct.ui.router.extras' ]


.config ( $locationProvider ) ->
  $locationProvider.html5Mode true


.config ( $stateProvider, $urlRouterProvider ) ->

  $stateProvider

    .state 'private',
      templateUrl: 'templates/private.html'
      abstract: true

    .state 'person',
      url: '/person/:person_id'
      templateUrl: 'templates/person.html'
      parent: 'private'
      abstract: true

    .state 'person.calendar',
      url: '/calendar'
      templateUrl: 'templates/calendar.html'
      sticky: true

    .state 'person.calendar.add',
      url: '/add'
      views:
        'dialog@': {
          templateUrl: 'templates/calendar_dialog.html'
        }

    .state 'person.messages',
      url: '/messages'
      templateUrl: 'templates/messages.html'
      sticky: true

    .state 'person.messages.add',
      url: '/add'
      views:
        'dialog@': {
          templateUrl: 'templates/messages_dialog.html'
        }

    .state 'person.dossier',
      url: '/dossier'
      templateUrl: 'templates/dossier.html'
      sticky: true

    .state 'person.letter',
      url: '/letter'
      views:
        'dialog@': {
          templateUrl: 'templates/letter_dialog.html'
        }

  $urlRouterProvider.otherwise ( $injector, $location ) ->
    $state = $injector.get '$state'
    $state.go 'person.calendar', person_id: 'me'

