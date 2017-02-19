Rails.application.routes.draw do
  resources :trials
  resources :companies
  resources :stocks
  resources :phases
  resources :stock_markets
  resources :stock_types
  resources :statuses
  resources :diseases
  resources :drugs
  get 'users/show'

  devise_for :users

 #Set root to sign-in page
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  #Provides default path for signed in users
  match 'user_root' => 'users#show', as: :user_root, via: :all
  match '/users/sign_in' => 'home#index', via: :all

end
