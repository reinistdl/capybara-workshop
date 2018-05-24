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

  def enterSignupEmail
    @input_singup_email.isVisible
    @input_singup_email.send_keys(Time.now.strftime("%Y%m%d%H%M%s")+"@yopmail.com")
  end

  def fillSignupPasswordFields(password)
    if (@input_singup_password1.visible? &&
      @input_singup_password2.visible?)
      @input_singup_password1.send_keys(password)
      @input_singup_password2.send_keys(password)
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

  def openSignIn
    @button_signin.click
    @form_signin.isVisible
  end

  def fillInvalidSignInCredentials(login,password)
    @input_singin_name.isVisible
    @input_singin_password.isVisible
    @input_singin_name.send_keys(login)
    @input_singin_password.send_keys(password)
  end

  def selectSignInFormLogInButton
    @button_signin_login.isVisible
    @button_signin_login.click
    # sleep(1)
  end

  def invalidCredentialsOnLoginError
    # unless @text_signin_error_text.visible? # Refactor to expect(page).to have_selector('#blah', visible: true) or other way of finding error message, maybe by text & xpath?
    #   raise "Error text about incorect login not visible"
    # end
    # unless @text_signin_error_text.text.include? "not correct"
    #   raise "Error message is not correct, does not have name 'invalid'"
    # end
    @text_signin_error_text.isVisible
  end
end
