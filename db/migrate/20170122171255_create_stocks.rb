class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.references :stock_market, foreign_key: true
      t.references :stock_type, foreign_key: true
      t.text :about, :default => nil

      t.timestamps
    end
  end
end
