Rails.application.routes.draw do
  resources :feedbacks
  resources :reports
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  get 'users/show'

  devise_for :users
 
  root 'home#index'

  #Provides default path for signed in users
  match 'user_root' => 'users#show', as: :user_root, via: :all
  match '/users/sign_in' => "devise/sessions#new", as: :login, via: :all

end
