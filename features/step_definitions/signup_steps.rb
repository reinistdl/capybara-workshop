When(/^I am on Appimation home page/) do
  @tests.login_tests.load_home_page
end



When(/^I validate try now/) do
  # @pages.page_home.openTryNow
  @tests.login_tests.validate_try_now
end

When(/^I submit contactUs message/) do
  @tests.login_tests.submit_contact_us_message
end





