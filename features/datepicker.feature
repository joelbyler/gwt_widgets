Feature: Using the gwt_dialog_box Dialog Box Widget

  Background:
    Given I am on the showcase date picker page

  Scenario: I choose a day from the date picker
    Given I choose the 14th day from the date picker
    Then I see today's date highlighted on the date picker
    And I see the 14th day selected on the date picker

#  Scenario: I choose a day from the date input box
#    Given I click in the date box field
#    When I choose the 16th day from the date box
#    Then I should see the 16th day in the date box field
