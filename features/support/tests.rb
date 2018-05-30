class Tests
    def initialize(pages)
        @pages = pages
    end

    def login_tests
        @login_tests ||= LoginTest.new(@pages)
        @login_tests
    end
end