Given /^I am on the Suggest Box page$/ do
  visit SuggestBoxPage
  @current_page.wait_until do
    @current_page.text.include? 'Choose a word:'
  end
end

When /^I type "([^"]*)" into the suggestion box$/ do |value|
  on(SuggestBoxPage).suggest_box = value
end

Then /^I am presented with the following suggestions:$/ do |table|
  table.rows.each do |row|
    on(SuggestBoxPage).suggest_box_suggestions.include?(row[0]).should == true
  end
end

When /^I click on the "([^"]*)" suggestion$/ do |suggestion|
  on(SuggestBoxPage).suggest_box_choose suggestion
end

Then /^I see "([^"]*)" in the suggestion box$/ do |value|
  on(SuggestBoxPage).suggest_box.value.should == value
end