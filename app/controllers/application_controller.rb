class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    render "home/index"
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
