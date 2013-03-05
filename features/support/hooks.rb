

Before do
  @browser = PageObject::PersistantBrowser.get_browser

  # GWT Showcase URL
  # http://gwt.google.com/samples/Showcase/Showcase.html

end

at_exit do
  PageObject::PersistantBrowser.quit
end
