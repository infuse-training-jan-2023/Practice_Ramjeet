
Feature: Delete an item
  As a user I can delete a todo item

  Scenario: Delete an item
    When I delete an item
    Then item should be deleted from the todo
    Then the api status code should be 200
    Then the api response content type should be json