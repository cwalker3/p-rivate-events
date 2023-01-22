Rails.application.routes.draw do
  root 'events#index'

  devise_for :users

  resources :events
  resources :users, only: [:show]
  resources :event_attendees, only: [:create]
  delete '/event_attendees', to: 'event_attendees#destroy'
end
