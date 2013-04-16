#class JQueryUIWidgets::Tabs < PageObject::Elements::UnorderedList
class GwtWidgets::TabPanel < PageObject::Elements::Div

  def select(label)
    div_element(:class => 'gwt-Label', :text => label).click
  end

  def selected
    div_element(:class => 'gwt-TabLayoutPanelTab-selected').text
  end

  def labels
    div_elements(:class => 'gwt-Label').map(&:text)
  end
end


