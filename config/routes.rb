Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  get 'users/show'

  devise_for :users

  #Set root to sign-in page
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  #Provides default path for signed in users
  match 'user_root' => 'users#show', as: :user_root, via: :all
  match '/users/sign_in' => "devise/sessions#new", as: :login, via: :all

  resources :feedbacks
  resources :reports

end
