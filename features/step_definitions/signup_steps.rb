When(/^I am on Appimation home page/) do
  visit('/legacy')
  unless find(:css, '#logo').visible?
    raise "Logo not visible"
  end
end



When(/^I open Try now/) do
  find(:css, '#start_button').click
  unless find(:css, '#signup').visible?
    raise "element not visible"
  end
end


Then("I close Try now") do
  find(:css, '#signup .closecross').click
end


When("I enter {string} and {string} in name in contact us") do |name, name2|
  unless find(:css, '#name').visible?
    raise "name not visible"
  end
  find(:css, '#name').send_keys(name)
  sleep(2)
  find(:css, '#name').native.clear

  find(:css, '#name').send_keys(name2)
  sleep(2)
end





