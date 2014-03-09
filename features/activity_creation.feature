Feature: activity creation
  In order to register an activity
  As the default user
  I want to create an activity

  Scenario: Create an activity
    Given I'm in the root path
    And I set a title 'my activity x'
    And I estimate it to 5 pomodoros
    And I save the activity
    Then I see the activity listed