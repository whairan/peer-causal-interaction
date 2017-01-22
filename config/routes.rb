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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
