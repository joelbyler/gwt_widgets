require 'page-object'
require 'gwt_widgets/version'
require 'gwt_widgets/dialog_box'
require 'gwt_widgets/date_picker'
require 'gwt_widgets/date_box'

module GwtWidgets

  PageObject.register_widget(:gwt_dialogbox, GwtWidgets::DialogBox, 'div')
  PageObject.register_widget(:gwt_datebox, GwtWidgets::DateBox, 'input')
  PageObject.register_widget(:gwt_datepicker, GwtWidgets::DatePicker, 'table')

end
