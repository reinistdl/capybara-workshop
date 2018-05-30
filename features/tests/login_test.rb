class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    @pages.page_home.isVisible
  end

  def validate_try_now
    @pages.page_home.openTryNow
    @pages.page_home.closeTryNow
  end

  def submit_contact_us_message
    user = Users.invalid_contact_form_user
    @pages.page_home.enter_name(user.name)
    @pages.page_home.enter_email(user.email)
    @pages.page_home.enter_message(user.message)
    sleep(3)
  end
end