class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user
	load_and_authorize_resource

	
	def show
		@sevenPM = Time.now.change(:hour=>18, :minute => 0, :second=>0)
		@tenPM = Time.now.change(:hour=>22, :minute => 0, :second=>0)
		@todays_report = nil
		@todays_feedbacks = []
		if @user.self_reporter
			#@remaining_time = Time.now + (Time.now.change(:hour=>18, :minute => 0, :second=>0)-)
			@page = params[:page]
			@todays_report = Report.where(:user_id=>@user.id,:created_at=>@sevenPM..@tenPM).first
			if @todays_report
				@feedback = @todays_report.feedback
			end
			@latest_report = Report.where(:user_id=>@user.id).last
		else
			@elevenPM = Time.now.change(:hour=>23, :minute => 0, :second=>0)
			@todays_feedbacks = Feedback.where(:user_id=>@user.id,:created_at=>@sevenPM..@elevenPM)
			@unreviewed_reports = Report.where(feedback_id:nil,created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
		end
	end


	private

	#Set the current user before anything else
	def set_user
		@user = current_user
	end

end
