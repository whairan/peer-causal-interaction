class AddCompanyToStocks < ActiveRecord::Migration[5.0]
  def change
    add_reference :stocks, :company, foreign_key: true
  end
end
