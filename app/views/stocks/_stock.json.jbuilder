json.extract! stock, :id, :ticker, :stock_market_id, :stock_type_id, :about, :created_at, :updated_at
json.url stock_url(stock, format: :json)