class DatePickerPage
  include PageObject

  page_url "http://gwt.googleusercontent.com/samples/Showcase/Showcase.html#!CwDatePicker"

  gwt_datepicker(:datepicker, :class => 'gwt-DatePicker')
  def datepicker
    datepicker_element
  end

end