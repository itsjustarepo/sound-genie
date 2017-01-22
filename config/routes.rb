Rails.application.routes.draw do
  get 'accounts/show'
  patch 'accounts/update'

  devise_for :users
  root 'application#index'

  resources :songs, only: [:show, :index]
  resources :users, only: [:show]

end
