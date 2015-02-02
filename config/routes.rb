Rails.application.routes.draw do


  root "trips#index"
  # resources :users
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # get "/users/edit" => "users#edit"
  get "/users/show" => "users#show"
  resources :activities
  resources :comments
  
  resources :trips

  namespace :api do
    resources :trips, only: [:index], defaults: { format: "json" }
        # resources :trips, only: [:index, :show, :new], defaults: { format: "json"}
      # end
    # resources :trips
  end
end
