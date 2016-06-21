
describe 'Regular dialogs', ->

  describe 'calendar dialog', ->

    describe 'when navigated to through a click', ->

      beforeEach ->
        browser.get '/person/me/calendar'
        button = element By.css '.content button[ui-sref]'
        button.click()

      it 'opens the dialog', ->
        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 1

        dialogHeader = element By.css '.dialog h3'
        expect( dialogHeader.getText() ).toEqual 'Add event'

      it 'keeps the calendar page open in the background', ->
        pageHeader = element By.tagName 'h2'
        expect( pageHeader.getText() ).toEqual 'Calendar page'

      it 'can be closed', ->
        button = element By.css '.dialog button'
        button.click()

        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 0

        pageHeader = element By.tagName 'h2'
        expect( pageHeader.getText() ).toEqual 'Calendar page'


    describe 'when navigated to through a page-load', ->

      beforeEach ->
        browser.get '/person/me/calendar/add'

      it 'opens the dialog', ->
        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 1

        dialogHeader = element By.css '.dialog h3'
        expect( dialogHeader.getText() ).toEqual 'Add event'

      it 'opens the calendar page in the background', ->
        pageHeader = element By.tagName 'h2'
        expect( pageHeader.getText() ).toEqual 'Calendar page'

      it 'can be closed', ->
        button = element By.css '.dialog button'
        button.click()

        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 0

        pageHeader = element By.tagName 'h2'
        expect( pageHeader.getText() ).toEqual 'Calendar page'



  describe 'messages dialog', ->

    describe 'when navigated to through a click', ->

      beforeEach ->
        browser.get '/person/me/messages'
        button = element By.css '.content button[ui-sref]'
        button.click()

      it 'opens the dialog', ->
        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 1

        dialogHeader = element By.css '.dialog h3'
        expect( dialogHeader.getText() ).toEqual 'Add message'

      it 'keeps the messages page open in the background', ->
        pageHeader = element By.tagName 'h2'
        expect( pageHeader.getText() ).toEqual 'Messages page'

      it 'can be closed', ->
        button = element By.css '.dialog button'
        button.click()

        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 0

        pageHeader = element By.tagName 'h2'
        expect( pageHeader.getText() ).toEqual 'Messages page'


    describe 'when navigated to through a page-load', ->

      beforeEach ->
        browser.get '/person/me/messages/add'

      it 'opens the dialog', ->
        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 1

        dialogHeader = element By.css '.dialog h3'
        expect( dialogHeader.getText() ).toEqual 'Add message'

      it 'opens the messages page in the background', ->
        pageHeader = element By.tagName 'h2'
        expect( pageHeader.getText() ).toEqual 'Messages page'

      it 'can be closed', ->
        button = element By.css '.dialog button'
        button.click()

        dialog = element.all By.css '.dialog'
        expect( dialog.count() ).toEqual 0

        pageHeader = element By.tagName 'h2'
        expect( pageHeader.getText() ).toEqual 'Messages page'

