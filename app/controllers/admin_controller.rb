class AdminController < ApplicationController
	http_basic_authenticate_with name: "admin", password: "conn-mci"

	def index
		@reports = Report.all
	end


	private

	#Set the current user before anything else
	def set_user
		@active = "user"
		@user = current_user
	end

end
