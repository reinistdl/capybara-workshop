require 'date'
When(/^I am on Appimation home page/) do
  visit('/legacy')
  unless find(:css, '#logo').visible?
    raise "Logo not visible"
  end
end

When(/^I open Sign Up/) do
  find(:css, '#signup-b').click
  unless find(:css, '#signup').visible?
    raise "#signup div not visilbe"
  end
end

Then(/^I close Sign Up/) do
  find(:css, '#signup .closecross').click
  if find(:css, '#signup').visible?
    raise "#signup div visilbe - Sign Up form still not closed!"
  end
end

When(/^I enter {string} and {string} in name in contact us/) do |name, name2|
  unless find(:css, '#name').visible?
    raise "name not visible"
  end
  find(:css, '#name').send_keys(name)
  find(:css, '#name').native.clear
  find(:css, '#name').send_keys(name2)
end

Then(/^I enter unique Sign Up email address/) do
  find(:css, "#signup [type='email']").send_keys(Time.now.strftime("%Y%m%d%H%M%s")+"@yopmail.com")
end

Then("I enter {string} as password {string} as project in Sign Up form") do |password, project_name|
  unless (find(:css, "#signup [name='password1']").visible?&&
    find(:css, "#signup [name='password2']").visible?&&
    find(:css, "#signup [name='project_name']").visible?)
    raise "Password, repeat password, or project name field is not visible"
  end
  find(:css, "#signup [name='password1']").send_keys(password)
  find(:css, "#signup [name='password2']").send_keys(password)
  find(:css, "#signup [name='project_name']").send_keys(project_name)
end

When(/^I open Sign In/) do
  find(:css, '#login-b').click
  unless find(:css, '#login').visible?
    raise "#login div not visilbe"
  end
end

Then("I use {string} as email and {string} as password to log in") do |email, password|
  find(:css, "#login [name='login']").send_keys(email)
  find(:css, "#login [name='password']").send_keys(password)
end

When(/^I select LOGIN button/) do
  find(:css, '#login .innerButton').click
  sleep(1)
end

Then(/^I receive error message about invalid credentials/) do
  unless find(:css, "[action='/login'] .alert-danger .errorText").text.include? "not correct" # could also be checked if element is visible, which might even be more efficient && faster
    raise "Error message is not correct, does not have name 'invalid'"
  end
end
