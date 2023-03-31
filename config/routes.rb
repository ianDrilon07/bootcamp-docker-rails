Rails.application.routes.draw do
  root "user#index"
  # get "/users", to: "user#index"
  # post "/users/create", to: "user#create"
  resources :user

end
