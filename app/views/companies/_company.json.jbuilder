json.extract! company, :id, :name, :url, :stock_id, :about, :address, :created_at, :updated_at
json.url company_url(company, format: :json)