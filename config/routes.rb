Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  root "events#index"

  resources :events
end
