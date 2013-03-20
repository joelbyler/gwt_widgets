class DialogBoxPage
  include PageObject

  page_url "http://gwt.googleusercontent.com/samples/Showcase/Showcase.html#!CwDialogBox"

  button(:show_dialog, :value => 'Show Dialog Box')

  gwt_dialogbox(:dialogbox, :class => 'gwt-DialogBox')

  def dialog_box
    dialogbox_element
  end

end

