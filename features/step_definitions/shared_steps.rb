Given(/^I'm in the root path$/) do
  visit root_path
end

Then(/^I see the activity listed$/) do
  expect(page).to have_content @activity.title
  expect(page).to have_content @activity.estimation
end
