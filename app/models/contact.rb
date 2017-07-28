class Contact < ActiveRecord::Base
    
    validates :name, presence: true
    validates :email, presence: true 
    validates :mobile, presence: true 

end
