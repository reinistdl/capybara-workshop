When(/^I am on Appimation home page/) do
  @tests.login_tests.load_home_page
end

Then(/^I validate Sign Up page/) do
  @tests.login_tests.open_sign_up
  @tests.login_tests.fill_sign_up_email
  @tests.login_tests.fill_sign_up_password
  @tests.login_tests.fill_sign_up_project
  @tests.login_tests.close_sign_up_form
end

When(/^I open Sign In/) do
  @tests.login_tests.open_sign_in
end

Then(/^I submit invalid sign in credentials/) do
  @tests.login_tests.fill_sign_in_email
  @tests.login_tests.fill_sign_in_password
  @tests.login_tests.submit_sign_in_data
  @tests.login_tests.sign_in_error_displayed
end
