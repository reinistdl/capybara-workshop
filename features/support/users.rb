require 'date'
module Users
    def Users.sign_up_user_unregistered
        @sign_up_user ||= User.new(args={password:'oVerridePassword',passwordAgain:'oVerridePassword'})
        @sign_up_user
    end

    class User
        attr_accessor :email, :password, :project, :passwordAgain
        def initialize(args={})
            defaults={email: Time.now.strftime("%Y%m%d%H%M%s")+"@yopmail.com", password: 'Password1', passwordAgain: 'Password1', project: DateTime.now}
            args = defaults.merge(args)
            @email=args[:email]
            @password=args[:password]
            @passwordAgain=args[:passwordAgain]
            @project=args[:project]
        end
        
    end
end