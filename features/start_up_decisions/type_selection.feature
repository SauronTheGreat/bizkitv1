Feature: Selection of type of biscuit
  Select the type of a biscuit as a player

  Scenario: I want to select type for my biscuit

    Given I login as a player
    And I have not submitted startup decisions
    When I go to start up decision page
    Then I should see a drop down with options for type from laundry list







