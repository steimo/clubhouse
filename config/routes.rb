Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :posts
  resources :users, only: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
