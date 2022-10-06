Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# 
  #  create a new account 

  post "/signup", to: "users#create"

  # maintain logged in 
  get "/me", to: "users#show"


  # create a session 
  post "/login", to: "sessions#create"

  # End a session 
  delete "/logout", to: "sessions#destroy"



end
