Feature: activity creation
  In order to register an activity
  As the default user
  I want to create an activity

  Scenario: create an activity
    Given I visit the "root" path
    When  I click on "Add activity"
    And   I fillin "activity title" with "foo activity"
    And   I estimate to "5" pomodoros
    And   I click on "Save"
    And   I visit the "root" path
    Then  I see "foo activity"
