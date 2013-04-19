Feature: Using the Stack Panel Widget

  Background:
    Given I am on the Showcase Stack Panel page


  Scenario: View panel content
    When I select the "Filters" panel from the stack
    Then I see "Sent by me"

  Scenario: Selected panel element
    When I select the "Contacts" panel from the stack
    Then the current panel is "Contacts"

  Scenario: Grabbing all panel names
    Then the stack panel labels are:
      | Mail     |
      | Filters  |
      | Contacts |

  Scenario: Determine which panel is selected
    When I select the "Contacts" panel from the stack
    Then the "Contacts" panel is selected
    And the "Filters" panel is not selected