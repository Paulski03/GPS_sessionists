# ORIGINAL
class ContactMailer < ActionMailer::Base
    default to: 'michaelpaulsolis@yahoo.com'
    
    def contact_email(name, email, mobile, body)
        @name = name
        @email = email
        @mobile = mobile
        @message = body
        
        mail(from: email, subject: 'Contact form Message')
    end
end

# MODIFIED
# Rails Contact Form w/ Gmail SMTP

# class ContactMailer< ActionMailer::Base

#   default :from => "noreply@youdomain.dev"
#   default :to => "michaelpaulsolis@yahoo.com"

#   def new_contact(contact)
#     @contact = contact
#     mail(:subject => "#{contact.name}")
#   end

# end