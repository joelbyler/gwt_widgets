class GwtWidgets::DialogBox < PageObject::Elements::Div

  def caption
    div_element(:class => 'Caption').span_element.text
  end

  def content
    div_element(:class => 'dialogMiddleCenterInner dialogContent').text
  end

  def close
    button_element(:class => 'gwt-Button', :text => 'Close').click
  end

end