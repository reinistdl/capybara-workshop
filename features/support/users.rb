require 'date'
module Users
    def Users.contact_form_user
        @contact_form_user ||= User.new(deprecated={name:'Reinis'})
        @contact_form_user
    end

    def Users.invalid_contact_form_user
        @contact_form_user ||= User.new(deprecated={email:'sjava.com'})
        @contact_form_user
    end

    class User
        attr_accessor :name, :email, :message
        def initialize(args={})
            defaults={name: 1, email: DateTime.now, message: DateTime.now}
            args = defaults.merge(args)
            @name=args[:name]
            @email=args[:email]
            @message=args[:message]
        end
        
    end
end