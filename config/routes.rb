Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  get 'users/index'
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts

  # Defines the root path route ("/")
  root to: "home#index"
end
