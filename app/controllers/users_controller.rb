class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user
	load_and_authorize_resource

	
	def show
		@sevenPM = Time.now.change(:hour=>19, :minute => 0, :second=>0)
		@tenPM = Time.now.change(:hour=>22, :minute => 0, :second=>0)
		@todays_report = nil
		@todays_feedbacks = []
		if @user.self_reporter
			@todays_report = Report.where(:user_id=>@user.id,:created_at=>@sevenPM..@tenPM).first
			if @todays_report
				@feedback = @todays_report.feedback
			end
		else
			@elevenPM = Time.now.change(:hour=>23, :minute => 0, :second=>0)
			@todays_feedbacks = Feedback.where(:user_id=>@user.id,:created_at=>@sevenPM..@elevenPM)
		end
		
	end


	private

	#Set the current user before anything else
	def set_user
		@active = "user"
		@user = current_user
	end

end
