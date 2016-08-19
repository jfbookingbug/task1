Given(/^Given I am on the BookingBug Contact Us pagecd$/) do
 visit('http://www.acumenci.com/contact-us/')
     expect(page).to have_content("CONTACT US", wait:30)
end

When(/^I navigate to the Contact Us page$/) do
  puts 'step 2'
end

Then(/^I should see an accurate post code "(EC1R 5EJ)"$/) do |arg1|
  puts 'step 3'
end
When(/^I submit just an email address and some message text$/) do
  fill_in('your-email', :with => 'cmilano@bookingbug.com')
  fill_in('your-message', :with => 'blah blah blah')
end

When(/^all other fields are blank$/) do
  click_button('submit', wait:5)
end

Then(/^I should see errors about other required fields$/) do
  page.should have_content('Validation errors occurred')
end

