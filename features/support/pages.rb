class Pages
    def page_home
        @page_home ||= HomePage.new
        @page_home
    end
end