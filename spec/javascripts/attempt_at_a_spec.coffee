
# describe 'directive: Checkbox', ->

#   beforeEach ->
#     browser.get ''

#   it 'toggles on click', ->
#     input = element By.css 'input[type=checkbox]'
#     label = element By.tagName 'label'

#     expect( input.isSelected() ).toBeFalsy()
#     label.click()
#     expect( input.isSelected() ).toBeTruthy()
#     label.click()
#     expect( input.isSelected() ).toBeFalsy()

#   it 'is checked according to model', ->
#     Sandbox.add '<checkbox ng-model="selected"></checkbox>', selected: true

#     input = element By.css 'input[type=checkbox]'
#     expect( input.isSelected() ).toBeTruthy()

#   it 'is unchecked according to model', ->
#     Sandbox.add '<checkbox ng-model="selected"></checkbox>', selected: false

#     input = element By.css 'input[type=checkbox]'
#     expect( input.isSelected() ).toBeFalsy()


describe 'Shit', ->

  beforeEach ->
    browser.get ''

  it 'loads', ->
    expect( browser.getTitle() ).toEqual 'ProtractorTryout'

  it 'angularizes', ->
    tag = element By.tagName 'strong'
    expect( tag.getText() ).toEqual '3'


  # it 'adds elements to the DOM', ->
  #   id = 'sandboxelement'
  #   Sandbox.add "<span id=\"#{id}\"></span>"

  #   elements = element.all By.id id
  #   expect( elements.count() ).toEqual 1

  # it 'binds elements to scope', ->
  #   scope = { value: 'works!' }
  #   Sandbox.add '<p>{{value}}</p>', scope

  #   p = element By.tagName 'p'
  #   expect( p.getText() ).toEqual scope.value
