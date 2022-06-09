Rails.application.routes.draw do
  resources :user_data
  resources :clients
  resources :shoes
  resources :malfunctions
  resources :reservations
  resources :price_lists
  resources :tracks
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'static#index'
end
