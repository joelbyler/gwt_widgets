class TabPanelPage
  include PageObject

  page_url "http://gwt.googleusercontent.com/samples/Showcase/Showcase.html#!CwTabLayoutPanel"

  gwt_tabpanel(:tabs, :class => 'gwt-TabLayoutPanel')

  def tabs
    tabs_element
  end


end