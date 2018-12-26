Rails.application.routes.draw do
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/help", to: "static_pages#help"
  get "/home", to: "static_pages#home"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  root "static_pages#home"
  resources :users
  resources :account_activations, only: %i(edit)
  resources :password_resets, only: %i(new create edit update)
end
