

Feature:Add new item
  As a user I want to add items to todo 

  Scenario: Add new item
    When I add item to todo
    Then I should be able to add item to the todo
    Then the api status code should be 201
    Then the api response content type should be json