Given /^I am on the Showcase Stack Panel page$/ do
  visit StackPanelPage
  @current_page.wait_until do
    @current_page.text.include? 'Stack Panel'
  end
end

When /^I select the "([^"]*)" panel from the stack$/ do |label|
  on(StackPanelPage).panels.select(label)
end

Then /^the current panel is "([^"]*)"$/ do |label|
  on(StackPanelPage).panels.selected.should == label
end

Then /^the stack panel labels are:$/ do |table|
  table.rows.each do |row|
    on(StackPanelPage).panels.labels.include?(row[0]).should == true
  end
end

Then /^the "([^"]*)" panel is selected$/ do |label|
  on(StackPanelPage).panels.selected.should == label
end

Then /^the "([^"]*)" panel is not selected$/ do |label|
  (on(StackPanelPage).panels.selected == label).should == false
end
