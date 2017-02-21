class AdminController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user


	rescue_from CanCan::AccessDenied do |exception|
		redirect_to root_url, :alert => exception.message
	end


	def index
	end


	private

	#Set the current user before anything else
	def set_user
		@active = "user"
		@user = current_user
	end

end
