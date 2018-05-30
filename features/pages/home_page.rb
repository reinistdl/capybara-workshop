class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:css, '#start_button')
    @form_sign_up = Element.new(:css, '#signup')
    @button_close_try_now = Element.new(:css, '#signup .closecross')
    @input_name_contact_us = Element.new(:css, '#name')
    @input_email_contact_us = Element.new(:css, '#email')
    @input_message_contact_us = Element.new(:css, '#contactus-message')
  end

  def isVisible
    @button_start.isVisible
    @input_name_contact_us.isVisible
  end

  def load
    visit('/legacy')
  end

  def openTryNow
    @button_start.click
    @form_sign_up.isVisible
    @button_close_try_now.isVisible
  end

  def closeTryNow
    @button_close_try_now.click
  end

  def enter_name(name)
    @input_name_contact_us.send_keys(name)
  end

  def enter_email(email)
    @input_email_contact_us.send_keys(email)
  end

  def enter_message(message)
    @input_message_contact_us.send_keys(message)
  end

  def clearName
    @input_name_contact_us.clear
  end
end