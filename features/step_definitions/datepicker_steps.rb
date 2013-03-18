
Given /^I choose the 14th day from the date picker$/ do
  @current_page.datepicker.choose_day 14
end

Then /^I should see today's date highlighted on the date picker$/ do
  todays_day = Time.new.day
  @current_page.datepicker.highlighted_day.should == todays_day.to_s
end

And /^I should see the 14th day selected on the date picker$/ do
  @current_page.datepicker.chosen_day.should == '14'
end

