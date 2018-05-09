Feature: Demo Feature

#     Scenario: Open SignUp Page
#         Given I am on Appimation home page
#         When I open Try now
#         Then I close Try now

#     Scenario: I can send contact us message
#         Given I am on Appimation home page
#         When I enter "lalalalla" and "namemname" in name in contact us

    Scenario: Fill Sign Up page
        Given I am on Appimation home page
        When I open Sign Up
        Then I enter unique Sign Up email address
        Then I enter "TestPassword" as password "Test Project" as project in Sign Up form
        Then I close Sign Up
        
    Scenario: Log in attempt (negative)
        Given I am on Appimation home page
        When I open Sign In
        Then I use "email@lolmail.com" as email and "fakePassword1" as password to log in
        When I select LOGIN button
        Then I receive error message about invalid credentials