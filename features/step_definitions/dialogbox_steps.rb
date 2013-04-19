Given /^I am on the Showcase Dialog Box page$/ do
  visit DialogBoxPage
  @current_page.wait_until do
    @current_page.show_dialog?
  end
end

When /^I click the 'Show Dialog Box' button$/ do
  @current_page.show_dialog
end

Then /^I see the showcase dialog box$/ do
  @current_page.dialog_box.should be_visible
end

And /^I dialog box caption says "([^"]*)"$/ do |caption|
  @current_page.dialog_box.caption.should == caption
end

And /^I dialog box content contains "([^"]*)"$/ do |text|
  @current_page.dialog_box.content.include?(text).should == true
end

When /^I close the showcase dialog box$/ do
  @current_page.dialog_box.close
  @current_page.wait_until do
    @current_page.dialog_box.visible? == false
  end
end

Then /^the showcase dialog box is hidden$/ do
  @current_page.dialog_box.should_not be_visible
end
