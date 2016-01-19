
angular
.module 'dialogRoutesLoFi'
.run ( $rootScope, $state ) ->

  removeListener = $rootScope.$on '$stateChangeStart', ( event, toState, toParams, fromState, fromParams ) ->

    unless fromState.name == '' && fromState.url == '^' && fromState.abstract
      removeListener()
      return

    viewNames = Object.keys toState.views if toState.views

    return unless viewNames?.length == 1 &&  viewNames[ 0 ].indexOf( 'dialog@' ) == 0

    event.preventDefault()

    $state.go( 'dossier', null, location: false, notify: false ).then ->
      $state.go toState.name, null, location: false
