require 'date'
class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @site_logo = Element.new(:css, '#logo')
    @button_signup = Element.new(:css, '#signup-b')
    @button_signin = Element.new(:css, '#login-b')
    @button_signin_login = Element.new(:css, '#login .innerButton')
    @form_signup = Element.new(:css, '#signup')
    @form_signin = Element.new(:css, '#login')
    @button_signup_close = Element.new(:css, '#signup .closecross')
    @input_singup_email = Element.new(:css, "#signup [type='email']")
    @input_singup_password1 = Element.new(:css, "#signup [name='password1']")
    @input_singup_password2 = Element.new(:css, "#signup [name='password2']")
    @input_singup_project_name = Element.new(:css, "#signup [name='project_name']")
    @input_singin_name = Element.new(:css, "#login [name='login']")
    @input_singin_password = Element.new(:css, "#login [name='password']")
    # @text_signin_error_text = Element.new(:css, "[action='/login'] .alert-danger .errorText")
    @text_signin_error_text = Element.new(:xpath, "//span[contains(text(), 'is not correct')]")
  end

  def isVisible
    @button_signup.isVisible
    @button_signin.isVisible
    @site_logo.isVisible
  end

  def load
    visit('/legacy')
  end

  def openSignUp
    @button_signup.click
    @form_signup.isVisible
  end

  def enterSignupEmail(email)
    @input_singup_email.isVisible
    @input_singup_email.send_keys(email)
  end

  def fillSignupPasswordFields(password,passwordAgain)
    if (@input_singup_password1.visible? &&
      @input_singup_password2.visible?)
      @input_singup_password1.send_keys(password)
      @input_singup_password2.send_keys(passwordAgain)
    else
      raise "Signup password fields are not visible"
    end
  end

  def fillSignupProject(project_name)
    @input_singup_project_name.isVisible
    @input_singup_project_name.send_keys(project_name)
  end

  def closeSignUpForm
    @button_signup_close.click
  end

  def open_sign_in
    @button_signin.click
    @form_signin.isVisible
  end

  def fill_sign_in_login(login)
    @input_singin_name.isVisible
    @input_singin_name.send_keys(login)
  end

  def fill_sing_in_password(password)
    @input_singin_password.isVisible
    @input_singin_password.send_keys(password)
  end

  def select_sign_in_form_log_in_button
    @button_signin_login.isVisible
    @button_signin_login.click
    # sleep(1)
  end

  def invalid_credentials_on_login_error
    @text_signin_error_text.isVisible
  end
end
