Rails.application.routes.draw do


  root "users#index"
  # resources :users
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # get "/users/edit" => "users#edit"
  get "/users/show" => "users#show"
end
