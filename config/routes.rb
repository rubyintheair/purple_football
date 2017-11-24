Rails.application.routes.draw do

  resources :users
  resources :teams

  root "home#index"
end
