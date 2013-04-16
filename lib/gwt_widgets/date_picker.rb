class GwtWidgets::DatePicker < PageObject::Elements::Table

  def choose_day (day)
    #div_element(:class => 'datePickerDay', :text => day.to_s).click
    div_elements(:class => 'datePickerDay')[day.to_i].click
  end

  def chosen_day
    div_element(:class => 'datePickerDayIsValue').text
  end

  def highlighted_day
    div_element(:class => 'datePickerDayIsToday').text
  end


end