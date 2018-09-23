Rails.application.routes.draw do
 
  get "/login" => "pages#login"
  get "/register" => "pages#register"

  root 'pages#index'

  resources :tenanttousers
  resources :tenants
  resources :rooms
  resources :reviews
  resources :reviewers
  resources :rentertousers
  resources :renters
  resources :locations
  resources :apartments
  resources :agencies
  devise_for :users

  
  mount RailsAdmin::Engine => '/admin', as: :rails_admin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
