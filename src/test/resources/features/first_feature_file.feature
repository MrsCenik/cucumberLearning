@google_search

Feature: Google Search Functionality
  Background: Navigating_to_the_page
    # Describe the behaviour
      # Given should be used as a preconditions. Usually Given is used in the first step
      # Then should be used for verification. Usually it is used at the end
      # And and When are used in the middle step to describe actions
  @smoke @regression
  Scenario: TC01_iPhone_search
    Given user is on the google page
    And user search for iPhone
    Then verify the result has iPhone
    Then close the application

  @teapot @smoke @regression  #We can use the tags to run one by one the scenarios
  Scenario: TC02_teapot_search
    Given user is on the google page
    And user search for tea pot
    Then verify the result has tea pot
    Then close the application

  #Write 2 more test case in this file
  #TC03_flower search and verify if the result has flower related stuff
  #TC04_tesla search and verify if the result has tesla related stuff
  #Make sure to use reusable methods for step 1 and step 4

  Scenario: TC03_flower_search
    Given user is on the google page
    And user search for flower
    Then verify the result has flower
    Then close the application
 @tesla @smoke
 Scenario: TC04_tesla_search
    Given user is on the google page
    And user search for tesla
    Then verify the result has tesla
    Then close the application


