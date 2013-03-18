class GwtWidgets::DatePicker < PageObject::Elements::TextField

  def choose_day (day)
    div_element(:class => 'datePickerDay', :text => day.to_s).click
  end

  def chosen_day
    div_element(:class => 'datePickerDay datePickerDayIsValue').text
  end

  def highlighted_day
    div_element(:class => 'datePickerDay datePickerDayIsToday').text
  end


end