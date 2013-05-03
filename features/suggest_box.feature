Feature: Using the GWT Suggest Box Widget

  Background:
    Given I am on the Suggest Box page

  Scenario: User starts to type and is presented with suggestions
    When I type "h" into the suggestion box
    Then I am presented with the following suggestions:
      | hammer  |
      | haskell |
      | hollis  |

  Scenario: Suggestions are reduced as user types
    When I type "ha" into the suggestion box
    Then I am presented with the following suggestions:
      | hammer  |
      | haskell |

  Scenario: Clicking on a suggestion will populate the text field
    When I click on the "haskell" suggestion
    Then I see "haskell" in the suggestion box
