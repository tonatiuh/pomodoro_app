Given(/^I click on the button for adding an activity$/) do
  click_on 'Add activity'
end

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

Given(/^I visit the "(.*?)" path$/) do |path|
  visit eval(path.gsub(' ', '_') << '_path')
end

When(/^I click on "(.*?)"$/) do |element|
  click_on element
end

When(/^I fillin "(.*?)" with "(.*?)"$/) do |field_name, value|
  fill_in field_name.gsub(' ', '_'), with: value
end

When(/^I estimate to "(.*?)" pomodoros$/) do |estimation|
  select estimation, from: 'Estimation'
end

Then(/^I see "(.*?)"$/) do |content|
  expect(page).to have_content(content)
end
