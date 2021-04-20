Rails.application.routes.draw do

  resources :comments
  devise_for :users
  root "events#index"

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :events do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]

end
