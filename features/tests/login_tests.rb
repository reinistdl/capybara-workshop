class LoginTest
    def initialize(pages)
      @pages = pages
    end

    def load_home_page
        @pages.page_home.load
        @pages.page_home.isVisible
    end

    def load_sign_up_page
        @pages.page_home.openSignUp
    end

    def fill_sign_up_page
        user=Users.sign_up_user_unregistered
        @pages.page_home.enterSignupEmail(user.email)
        @pages.page_home.fillSignupPasswordFields(user.password, user.passwordAgain)
        @pages.page_home.fillSignupProject(user.project)
    end

    # def fill_sign_up_email
    #     user=Users.sign_up_user_unregistered
    #     @pages.page_home.enterSignupEmail(user.email)
    # end

    # def fill_sign_up_password
    #     user=Users.sign_up_user_unregistered
    #     @pages.page_home.fillSignupPasswordFields(user.password, user.passwordAgain)
    # end

    # def fill_sign_up_project
    #     user=Users.sign_up_user_unregistered
    #     @pages.page_home.fillSignupProject(user.project)
    # end

    def close_sign_up_form
        @pages.page_home.closeSignUpForm
    end

    def open_sign_in
        @pages.page_home.open_sign_in
    end

    def submit_sign_in_data
        user=Users.sign_up_user_unregistered
        @pages.page_home.fill_sign_in_login(user.email)
        @pages.page_home.fill_sing_in_password(user.password)
        @pages.page_home.select_sign_in_form_log_in_button
    end

    # def fill_sign_in_email
    #     user=Users.sign_up_user_unregistered
    #     @pages.page_home.fill_sign_in_login(user.email)
    # end

    # def fill_sign_in_password
    #     user=Users.sign_up_user_unregistered
    #     @pages.page_home.fill_sing_in_password(user.password)
    # end

    # def submit_sign_in_data
    #     @pages.page_home.select_sign_in_form_log_in_button
    # end
    
    def sign_in_error_displayed
        @pages.page_home.invalid_credentials_on_login_error
    end

end