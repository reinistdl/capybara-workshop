When(/^I am on Appimation home page/) do
  visit('/')
#  find(:css, '#start_button')
#  find(:xpath, "//button[@id = 'start_button']")
#  find(:css, "#video")
#  find(:css, ".feature-image")
#  find(:xpath, "//h3[contains(text(), 'Team up')]/preceding-sibling::img")
# “Try Now” button
  find(:css, '#start_button')
  find(:xpath, "//button[@id = 'start_button']")
# “Sign Up” button 
  find(:css, '#signup-b')
  find(:xpath, "//button[@id = 'signup-b']")
# “Contact Us” Section 
  find(:css, '#cta')
  find(:xpath, "//section[@id = 'cta']")
# “Contact Us” name input 
  find(:css, '#name')
  find(:xpath, "//input[@id = 'name']")
# “Contact Us” email input email
  find(:css, '#email')
  find(:xpath, "//input[@id = 'email']")
# “Contact Us” message input contactus-message
  find(:css, '#contactus-message')
  find(:xpath, "//textarea[@id = 'contactus-message']")
# “Contact Us” send button
  find(:css, '#contactus-button')
  find(:xpath, "//input[@id = 'contactus-button']")
# FaceBook logo at the bottom of page 
  find(:css, '.fa-facebook')
  find(:xpath, "//a[contains(@class, 'fa-facebook')]")
# All Feature sections in list
  all(:css, '.box.special.features section')
  all(:xpath, "//section[contains(@class, 'box special features')]/descendant::section")
# Chain Requests with reusable data image
  find(:css, "[src='static/images/features/chain.png']")
  find(:xpath, "//h3[contains(text(), 'Chain requests')]/preceding-sibling::img")
  find(:xpath, "//section[contains(@class, 'box special features')]/descendant::section/h3[contains(text(), 'Chain requests')]/preceding-sibling::img") # above we have viable solution as well, even easier to read.
end