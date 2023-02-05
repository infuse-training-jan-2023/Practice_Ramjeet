
Feature: Get an item
  As a user I can get an item from todo

  Scenario: Get an item
    When I search for an item
    Then I should get the item requested
    Then the api status code should be 200
    Then the api response content type should be json