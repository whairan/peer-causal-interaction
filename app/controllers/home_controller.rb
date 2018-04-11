class HomeController < ApplicationController
  protect_from_forgery with: :exception
  before_action :set_user
  #skip_before_filter :authenticate_user!

  def index
    
  end




  protected
  #Set the current user before anything else
  def set_user
    @active = nil
    if current_user
      @user = current_user
    end
  end


end