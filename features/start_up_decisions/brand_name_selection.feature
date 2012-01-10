Feature: Selection of brand name
  Select the brand name of a biscuit as a player

  Scenario: I want to select name for my biscuit

    Given I login as a player
    And I have not submitted startup decisions
    When I go to start up decision page
    Then I should see a textbox with space for typing name

  Scenario: The player keeps brand name blank
    Given I login as a player
    And I have not submitted startup decisions
    When I go to start up decision page
    Then I should see a textbox with space for typing name








