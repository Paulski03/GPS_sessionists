# ORIGINAL
class Contact < ActiveRecord::Base
    
    validates :name, presence: true
    validates :email, presence: true 
    validates :mobile, presence: true 

end

# MODIFIED
# class Contact    

# include ActiveModel::Validations
#   include ActiveModel::Conversion
#   extend ActiveModel::Naming

#   attr_accessor :name, :email, :mobile, :message

#   validates :name, :email, :mobile, :message, :presence => true
#   validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
  
#   def initialize(attributes = {})
#     attributes.each do |name, value|
#       send("#{name}=", value)
#     end
#   end

#   def persisted?
#     false
#   end

# end