json.extract! report, :id, :user_id, :attendance, :assignments, :participation, :sleep, :exercise, :meals, :feedback_id, :created_at, :updated_at
json.url report_url(report, format: :json)