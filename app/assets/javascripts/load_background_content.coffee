
angular
.module 'dialogRoutesHiFi'
.run ( $rootScope, $state ) ->

  removeListener = $rootScope.$on '$stateChangeStart', ( event, toState, toParams, fromState, fromParams ) ->

    unless fromState.name == '' && fromState.url == '^' && fromState.abstract
      removeListener()
      return

    viewNames = Object.keys toState.views if toState.views

    return unless viewNames?.length == 1 &&  viewNames[ 0 ].indexOf( 'dialog@' ) == 0

    event.preventDefault()

    $state.go( 'person.dossier', toParams, location: false, notify: false ).then ->
      $state.go toState.name,    toParams, location: false, notify: true
