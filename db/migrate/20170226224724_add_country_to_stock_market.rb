class AddCountryToStockMarket < ActiveRecord::Migration[5.0]
  def change
    add_column :stock_markets, :country, :string
    remove_column :stocks, :stock_type_id
  end
end
