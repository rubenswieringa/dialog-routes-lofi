
describe 'State-independent dialogs', ->

  describe 'letter dialog', ->

    describe 'when navigated to through a click', ->

      beforeEach ->
        browser.get '/dossier'
        link = element By.css '[ui-sref=letter]'
        link.click()

      it 'opens the dialog', ->
        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 1

        dialogHeader = element By.css '.dialog h3'
        expect( dialogHeader.getText() ).toEqual 'Received a letter?'


    describe 'when navigated to through a page-load', ->

      beforeEach ->
        browser.get '/letter'

      it 'opens the dialog', ->
        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 1

        dialogHeader = element By.css '.dialog h3'
        expect( dialogHeader.getText() ).toEqual 'Received a letter?'
