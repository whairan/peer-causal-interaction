json.extract! stock_market, :id, :name, :about, :created_at, :updated_at
json.url stock_market_url(stock_market, format: :json)