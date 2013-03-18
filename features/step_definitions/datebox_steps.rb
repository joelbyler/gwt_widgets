
Given /^I am on the showcase date picker page$/ do
  visit DatePickerPage
  @current_page.wait_until do
    @current_page.browser.text.include? 'Permanent DatePicker:'
  end
end

Given /^I click in the date box field$/ do
  require 'pry'; binding.pry;
  @current_page.datebox.input.focus
end

Given /^I choose the 16th day from the date box$/ do
  @current_page.datebox.choose_day 16
end

Then /^I should see the 16th day in the date box$/ do
end

Then /^I should see the 16th day in the date box field$/ do
  @current_page.datebox.input.text.should == '16'
end
