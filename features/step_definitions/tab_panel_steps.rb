Given /^I am on the Showcase Tab Layout Panel page$/ do
  visit TabPanelPage
  @current_page.wait_until do
    @current_page.text.include? 'Tab Layout Panel'
  end
end

Then /^I see a tab layout panel$/ do
  on(TabPanelPage).tabs.exists?.should == true
end

And /^the tab labels are:$/ do |table|
  table.rows.each do |row|
    on(TabPanelPage).tabs.labels.include?(row[0]).should == true
  end
end

When /^I select the "([^"]*)" tab$/ do |label|
  on(TabPanelPage).tabs.select(label)
end

Then /^the current tab should be "([^"]*)"$/ do |label|
  on(TabPanelPage).tabs.selected.should == label
end

Then /^I see "([^"]*)"$/ do |search_text|
  @current_page.text.include?(search_text).should == true
end


