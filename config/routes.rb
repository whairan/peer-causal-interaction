Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :trials
  resources :companies
  resources :stocks
  resources :phases
  resources :stock_markets
  resources :statuses
  resources :diseases
  resources :drugs
  get 'users/show'

  devise_for :users
 
  root 'home#index'

  #Provides default path for signed in users
  match 'user_root' => 'users#show', as: :user_root, via: :all
  match '/users/sign_in' => "devise/sessions#new", as: :login, via: :all

end
