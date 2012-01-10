Feature: Selection of packaging
  Select the packaging of a biscuit as a player

  Scenario: I want to select packaging style for my biscuit

    Given I login as a player
    And I have not submitted startup decisions
    When I go to start up decision page
    Then I should see a drop down with options for packaging from laundry list







