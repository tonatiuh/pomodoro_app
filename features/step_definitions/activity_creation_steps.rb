Given(/^I'm in the root path$/) do
  visit root_path
end

Given(/^I set a title 'my activity x'$/) do
  @activity = 'my activity x'
  fill_in 'Title', with: @activity
end

Given(/^I estimate it to (\d+) pomodoros$/) do |arg1|
  @pomodoros = 5
  select '5', from: 'Estimation'
end

Given(/^I save the activity$/) do
  click_button 'Save'
end

Then(/^I see the activity listed$/) do
  visit root_path

  expect(page).to have_content @activity
  expect(page).to have_content @pomodoros
end
