require 'page-object'
require 'gwt_widgets/version'
require 'gwt_widgets/dialog_box'
require 'gwt_widgets/date_picker'
require 'gwt_widgets/date_box'
require 'gwt_widgets/tab_panel'
require 'gwt_widgets/stack_panel'
require 'gwt_widgets/suggest_box'

module GwtWidgets

  PageObject.register_widget(:gwt_dialogbox, GwtWidgets::DialogBox, 'div')
  PageObject.register_widget(:gwt_datebox, GwtWidgets::DateBox, 'input')
  PageObject.register_widget(:gwt_datepicker, GwtWidgets::DatePicker, 'table')
  PageObject.register_widget(:gwt_tabpanel, GwtWidgets::TabPanel, 'div')
  PageObject.register_widget(:gwt_stackpanel, GwtWidgets::StackPanel, 'table')
  PageObject.register_widget(:gwt_suggestbox, GwtWidgets::SuggestBox, 'input')

end
