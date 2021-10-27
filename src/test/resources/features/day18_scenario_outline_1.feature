#When user search for the following capitals: London, Paris, Vienna, Berlin, Madrid
#Then verify the the result includes the the searched values



@scenario_outline_google_search
Feature: Google_Search_Functionality
  Scenario Outline: google_search

    Given user is on the google page
    And user search for "<keyword>"
    Then verify the result has "<keyword>"
    Then close the application


    Examples:
      | keyword |
      | iphone  |
      | tea pot |
      | tesla   |
      | flower  |