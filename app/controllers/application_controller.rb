class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    render "home/index"
  end

  #Route to user page on sign-in
  def after_sign_in_path_for(resource)
    user_root_path(current_user)
  end

  def after_updated_account_path_for(resource)
    user_root_path(current_user)
  end


  protected

  #Allow additional parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :first_name
    devise_parameter_sanitizer.for(:account_update) << :last_name
    devise_parameter_sanitizer.for(:sign_up) << :first_name
    devise_parameter_sanitizer.for(:sign_up) << :last_name
    devise_parameter_sanitizer.for(:sign_up) << :email
    devise_parameter_sanitizer.for(:sign_in) << :email
  end
end
