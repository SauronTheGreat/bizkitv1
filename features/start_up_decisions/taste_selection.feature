Feature: Selection of taste
  Select the taste of a biscuit as a player

  Scenario: I want to select taste for my biscuit

    Given I login as a player
    And I have not submitted startup decisions
    When I go to start up decision page
    Then I should see a drop down with options for taste from laundry list







