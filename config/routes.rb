Rails.application.routes.draw do
  get 'event/new'
  get 'event/create'
  get 'event/show'
  get 'event/index'
  get 'event/edit'
  get 'event/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "events#index"
end
