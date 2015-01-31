Rails.application.routes.draw do


  root "users#index"
  # resources :users
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # get "/users/edit" => "users#edit"
  get "/users/show" => "users#show"
  resources :activities
  resources :comments
  resources :trips

  namespace :api, defaults: { format: "json"} do
    resources :users do
        resources :trips, only: [:index, :show, :new]
      end
  end
end
