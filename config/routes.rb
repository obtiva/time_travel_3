TimeTravel3::Application.routes.draw do
  resources :friends

  resources :trip_features

  resources :user_preferences

  resources :purchases

  resources :trips

  resources :users

  devise_for :users

  root :to => "home#index"
end
