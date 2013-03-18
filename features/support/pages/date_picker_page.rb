class DatePickerPage
  include PageObject

  page_url "http://gwt.googleusercontent.com/samples/Showcase/Showcase.html#!CwDatePicker"

  gwt_datepicker(:datepicker, :class => 'gwt-DatePicker')
  def datepicker
    datepicker_element
  end

  gwt_datebox(:datebox, :class => 'gwt-DateBox', :popup => true)
  def datebox
    datebox_element
  end
end