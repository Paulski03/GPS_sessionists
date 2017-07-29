class ContactMailer < ActionMailer::Base
    default to: 'michaelpaulsolis@yahoo.com'
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @mobile = mobile
        @body = body
        
        mail(from: email, subject: 'Contact form Message')
    end
end