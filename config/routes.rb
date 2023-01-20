Rails.application.routes.draw do
  root 'events#index'

  devise_for :users

  resources :events
  resources :users, only: [:new, :create, :show]
end
