Rails.application.routes.draw do


  post '/rate' => 'rater#create', :as => 'rate'
  root 'pages#index'


  resources :tenanttousers
  resources :tenants
  resources :apartment_complexes
  resources :rentertousers
  resources :renters
  resources :locations
  resources :apartments
  resources :agencies
  resources :ratings

  get '/add_tenant_rating', to: "ratings#add_tenant_rating"
  get '/edit_tenant_rating', to: "ratings#edit_tenant_rating"
  get '/add_renter_rating', to: "ratings#add_renter_rating"
  get '/edit_renter_rating', to: "ratings#edit_renter_rating"
#devise_for :users, controllers: { registrations: "users/registrations" }

devise_for :users do
  get '/users/sign_out' => 'devise/sessions#destroy'
end


  mount RailsAdmin::Engine => '/admin', as: :rails_admin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
