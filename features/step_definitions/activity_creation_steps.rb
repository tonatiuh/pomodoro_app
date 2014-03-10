Given(/^I set a title 'my activity x'$/) do
  @activity = Fabricate.build :activity
  fill_in 'Title', with: @activity.title
end

Given(/^I estimate it to (\d+) pomodoros$/) do |arg1|
  select rand(1..5), from: 'Estimation'
end

Given(/^I save the activity$/) do
  click_button 'Save'
end
