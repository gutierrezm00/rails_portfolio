Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :admins, controllers: { sessions: 'admins/sessions' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts

  # Defines the root path route ("/")
  root to: "home#index"
end
