Rails.application.routes.draw do

  devise_for :users
  root "events#index"

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :events
  resources :users, only: [:show, :edit, :update]

end
