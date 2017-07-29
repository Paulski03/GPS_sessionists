Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# ORIGINAL
resources :contacts

  get '/about'  => 'pages#about'
  
  root 'pages#home'
end



# MODIFIED
# resources :contacts
    
#     #  match 'contacts' => 'contact#new', :as => 'contacts', :via => :get
#     #  match 'contacts' => 'contact#create', :as => 'contacts', :via => :post

  
#   get '/about'  => 'pages#about'
  
#   root 'pages#home'
# end
