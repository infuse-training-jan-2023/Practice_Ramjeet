
Feature: Update an item
  As a user I can update a todo item

  Scenario: Update an item
    When I update an item
    Then item should be updated from the todo
    Then the api status code should be 201
    Then the api response content type should be json