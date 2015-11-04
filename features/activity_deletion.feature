Feature: Activity deletion
  Given I don't need anymore a planned activity
  As the default user
  I need to be able to delete an existing activity

  Scenario: I delete an existent activity
    Given the activity "foo activity" exists
    When  I visit the "root" path
    Then  I see "foo activity"
    When  I click on "Delete"
    Then  I don't see "foo activity"
