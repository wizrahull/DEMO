Rails.application.routes.draw do
  resources :kings
  resources :properties
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "properties#index"
  # resources :owner 


  
end
