Feature: Using the GWT Tab Panel Widget

  Background:
    Given I am on the Showcase Tab Layout Panel page

  Scenario: User is presented with tabs
    Then I see a tab layout panel
    And the tab labels are:
      | Home      |
      | GWT Logo  |
      | More Info |

  Scenario: View content of a tab
    When I select the "More Info" tab
    Then I see "Tabs are highly customizable using CSS."

  Scenario: Select a tab
    When I select the "GWT Logo" tab
    Then the current tab should be "GWT Logo"
