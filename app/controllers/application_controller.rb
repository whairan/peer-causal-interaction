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
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :image_url])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :image_url])
  end
end
