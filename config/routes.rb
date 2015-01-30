Rails.application.routes.draw do


  root "users#index"
  # resources :users
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :activities



end
