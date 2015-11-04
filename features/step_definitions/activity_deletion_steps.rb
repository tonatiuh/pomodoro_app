Given(/^the activity "(.*?)" exists$/) do |activity_title|
  Fabricate(:activity, title: activity_title)
end

Then(/^I don't see "(.*?)"$/) do |content|
  expect(page).to_not have_content(content)
end
