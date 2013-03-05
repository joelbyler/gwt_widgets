class DialogBoxPage
  include PageObject

  page_url "http://gwt.googleusercontent.com/samples/Showcase/Showcase.html#!CwDialogBox"

  button(:show_dialog, :text => 'Show Dialog Box')

  gwt_dialog_box(:dialog_box, :class => 'gwt-DialogBox')

  def dialog_box
    dialog_box_element
  end

end

