
class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user
	load_and_authorize_resource

	
	def show
		@sevenPM = Time.zone.now.change(:hour=>18, :minute => 0, :second=>0)
		@tenPM = Time.zone.now.change(:hour=>22, :minute => 0, :second=>0)
		@todays_report = nil
		@todays_feedbacks = []

		if @user.self_reporter
			# @remaining_time = Time.now + (Time.now.change(:hour=>18, :minute => 0, :second=>0)-)
			@page = params[:page]
			@todays_report = Report.where(:user_id=>@user.id,:created_at=>@sevenPM..@tenPM).first
			if @todays_report
				@feedback = @todays_report.feedback
			end
			@latest_report = Report.where(:user_id=>@user.id).last



			@reports = {}
			all_reports = Report.where(user_id:@user.id)
			all_reports.each do |report|
				date = report.created_at.strftime("%m/%d/%Y")
				report_info = {attendance:report.attendance,assignments:report.assignments,participation:report.participation,
					sleep:report.sleep,exercise:report.exercise,meals:report.meals}
				feedback_info = {}
				feedback = report.feedback
				if feedback
					feedback_info = {attendance:feedback.attendance,assignments:feedback.assignments,participation:feedback.participation,
					sleep:feedback.sleep,exercise:feedback.exercise,meals:feedback.meals,comments:feedback.comments}
				end
				@reports[date] = {report:report_info,feedback:feedback_info}
			end

		else
			@elevenPM = Time.zone.now.change(:hour=>23, :minute => 0, :second=>0)
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
