require 'page-object'
require 'gwt_widgets/version'
require 'gwt_widgets/dialog_box'

module GwtWidgets

  PageObject.register_widget(:gwt_dialog_box, GwtWidgets::DialogBox, 'div') #class => 'gwt-DialogBox'

end
