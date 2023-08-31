Rails.application.routes.draw do
  get 'terminos/index'
  get 'inicio/index'
  resources :pets
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "inicio#index"
end
