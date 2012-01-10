Feature: Selection of topping
  Select the topping of a biscuit as a player

  Scenario: I want to select topping for my biscuit

    Given I login as a player
    And I have not submitted startup decisions
    When I go to start up decision page
    Then I should see a drop down with options for topping from laundry list







