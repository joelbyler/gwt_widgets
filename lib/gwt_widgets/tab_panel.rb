#class JQueryUIWidgets::Tabs < PageObject::Elements::UnorderedList
class GwtWidgets::TabPanel < PageObject::Elements::Div

  def select(label)
    div_element(:class => 'cw-StackPanelHeader', :text => label).click
  end

  def selected
    cell_element(:class => 'gwt-StackPanelItem-selected').text
  end

  def labels
    div_elements(:class => 'cw-StackPanelHeader').map(&:text)
  end
end


