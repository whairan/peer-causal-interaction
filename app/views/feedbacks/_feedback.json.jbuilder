json.extract! feedback, :id, :user_id, :attendance, :assignments, :participation, :sleep, :exercise, :meals, :report_id, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)