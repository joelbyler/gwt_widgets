class StackPanelPage
  include PageObject

  #page_url "http://gwt.googleusercontent.com/samples/Showcase/Showcase.html#!CwStackPanel"
  page_url "http://localhost:8888/#!CwStackPanel"


  gwt_stackpanel(:panels, :class => 'gwt-DecoratedStackPanel')

  def panels
    panels_element
  end


end