class SuggestBoxPage
  include PageObject

  page_url "http://gwt.googleusercontent.com/samples/Showcase/Showcase.html#!CwSuggestBox"
  #page_url "http://localhost:8888/#!CwSuggestBox"

  gwt_suggestbox(:suggest_box, :class => 'gwt-SuggestBox')

  def suggest_box
    suggest_box_element
  end

end