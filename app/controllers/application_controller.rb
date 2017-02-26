class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  #before_filter :authenticate_user!
  before_action :set_user

  rescue_from CanCan::AccessDenied do |exception|
    if request.env["HTTP_REFERER"].present?
    redirect_to :back, :alert => "Either you are not logged in or your account is not authorized to access this page."
    else
    redirect_to "/", :alert => "Either you are not logged in or your account is not authorized to access this page."
    end
  end

  #Route to user page on sign-in
  def after_sign_in_path_for(resource)
    user_root_path(current_user)
  end

  def after_updated_account_path_for(resource)
    user_root_path(current_user)
  end




  protected
  #Set the current user before anything else
  def set_user
    @active = nil
    if current_user
      @user = current_user
    end
  end

  #Allow additional parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :image_url])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :image_url])
  end
end
