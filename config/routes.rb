Rails.application.routes.draw do
  root "user#index"
  # get "/users", to: "user#index"
  # post "/users/create", to: "user#create"
  devise_for :user

  get 'user/:id/new', to: "user#show"
  resources :user
  devise_scope :user do
    get "/signout", to: "devise/sessions#destroy", as: :signout
  end
end
