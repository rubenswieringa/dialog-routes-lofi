
describe 'State-independent dialogs', ->

  describe 'letter dialog', ->

    describe 'when navigated to through a click', ->

      beforeEach ->
        browser.get '/person/me/dossier'
        link = element By.css '[ui-sref$=letter]'
        link.click()

      it 'opens the dialog', ->
        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 1

        dialogHeader = element By.css '.dialog h3'
        expect( dialogHeader.getText() ).toEqual 'Received a letter?'

      it 'keeps the dossier page open in the background', ->
        pageHeader = element By.tagName 'h2'
        expect( pageHeader.getText() ).toEqual 'Dossier page'


    describe 'when navigated to through a page-load', ->

      beforeEach ->
        browser.get '/person/me/letter'

      it 'opens the dialog', ->
        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 1

        dialogHeader = element By.css '.dialog h3'
        expect( dialogHeader.getText() ).toEqual 'Received a letter?'

      it 'opens the dossier page in the background', ->
        pageHeader = element By.tagName 'h2'
        expect( pageHeader.getText() ).toEqual 'Dossier page'



  describe 'when navigating between potential parent states', ->

    getInactiveStates = ( callback ) ->
      app = angular.element document.querySelector '[ng-app]'
      service = app.injector().get '$stickyState'
      callback ( state.self.name for state in service.getInactiveStates() )

    it 'are not listed as inactive', ->
      browser.get ''

      link = element By.css '[ui-sref$=messages]'
      link.click()
      expect( browser.executeAsyncScript getInactiveStates ).toEqual []

      link = element By.css '[ui-sref$=dossier]'
      link.click()
      expect( browser.executeAsyncScript getInactiveStates ).toEqual []

      link = element By.css '[ui-sref$=calendar]'
      link.click()
      expect( browser.executeAsyncScript getInactiveStates ).toEqual []


