@scenario_outline_search_for_capitals
Feature: Google_Search_Functionality
  Scenario Outline: google_search

    When user is on the google page
    And user search for "<Capitals>"
    Then verify the result has "<Capitals>"
    Then close the application

    Examples:

      | Capitals |
      | London   |
      | Paris    |
      | Vienna   |
      | Berlin   |
      | Madrid   |