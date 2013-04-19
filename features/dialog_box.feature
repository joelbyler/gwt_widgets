Feature: Using the gwt_dialog_box Dialog Box Widget

  Background:
    Given I am on the Showcase Dialog Box page
    And I click the 'Show Dialog Box' button

  Scenario: Getting information from the page
    Then I see the showcase dialog box
    And I dialog box caption says "Sample DialogBox"
    And I dialog box content contains "This is an example of a standard dialog box component."

  Scenario: Closing the dialog
    When I close the showcase dialog box
    Then the showcase dialog box is hidden

