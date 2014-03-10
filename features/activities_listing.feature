Feature: activities listing
  In order to know which activities exist
  As a default user
  I want to see a list of all the activities

  Scenario: list all the activities
    Given an activity exists in the db
    And I'm in the root path
    Then I see the activity listed
