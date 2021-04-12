Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  root "events#index"

  resources :events
end
