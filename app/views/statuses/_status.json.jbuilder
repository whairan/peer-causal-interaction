json.extract! status, :id, :name, :about, :created_at, :updated_at
json.url status_url(status, format: :json)