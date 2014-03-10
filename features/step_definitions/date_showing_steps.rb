Then(/^I see the current date$/) do
  time           = Time.new
  formatted_date = time.strftime("%b #{time.day.ordinalize} of %Y")

  expect(page).to have_content(formatted_date)
end
