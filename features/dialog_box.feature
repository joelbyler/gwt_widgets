Feature: Using the gwt_dialog_box Dialog Box Widget

  Background:
    Given I am on the showcase dialog box page
    And I click the 'Show Dialog Box' button

  Scenario: Getting information from the page
    Then I see the showcase dialog box

  Scenario: Closing the dialog
    When I close the showcase dialog box
    Then the showcase dialog box is hidden

