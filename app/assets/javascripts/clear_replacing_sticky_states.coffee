
angular
.module 'dialogRoutesLoFi'
.run ( $rootScope, $stickyState ) ->

  $rootScope.$on '$stateChangeSuccess', ( event, toState, toParams, fromState, fromParams ) ->

    # only interested in sticky from- & to-states
    return unless fromState.sticky && toState.sticky

    # we're here to clear inactive from-states
    inactiveStates = $stickyState.getInactiveStates()

    # bail if there are no inactive states
    return unless inactiveStates.length

    # bail if from-state is not inactive
    return unless inactiveStates.some ( state ) -> state.self.name == fromState.name

    # ƒind out if to-state overrides all ui-views taken up by from-state
    fromViews = if fromState.views then Object.keys fromState else [ '' ]
    toViews   = if toState.views   then Object.keys toState   else [ '' ]
    return unless fromViews.filter ( view ) -> toViews.indexOf( view ) != -1

    # clear inactive from-state
    $stickyState.reset fromState.name
