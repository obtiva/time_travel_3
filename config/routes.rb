TimeTravel3::Application.routes.draw do
  
  devise_for :users
  
  resources :friends

  resources :trip_features

  resources :user_preferences

  resources :purchases

  resources :trips

  resources :users

  root :to => "trips#index"
end
