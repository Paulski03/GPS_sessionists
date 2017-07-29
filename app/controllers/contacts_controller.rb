# ORIGINAL

class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)
        
        if @contact.save
            name = params[:contact][:name]
            email = params[:contact][:email]
            mobile = params[:contact][:mobile]
            body = params[:contact][:message]
            
            ContactMailer.contact_email(name, email, mobile, body).deliver
            
            flash[:success] = 'Message sent...'
            redirect_to new_contact_path
        else
            flash[:danger] = 'Error occured, message has not been sent...'
            redirect_to new_contact_path
        end
    end
        private
            def contact_params
                params.require(:contact).permit(:name, :email, :mobile, :message)
            end
end


# MODIFIED

# class ContactsController < ApplicationController

#   def new
#     @contact = Contact.new
#   end

#   def create
#     @contact = Contact.new(params[:contact])
    
#     if @contact.valid?
#       NotificationsMailer.new_contact(@contact).deliver
#       redirect_to(root_path, :notice => "Message was successfully sent.")
#     else
#       flash.now.alert = "Please fill all fields."
#       render :new
#     end
#   end

# end