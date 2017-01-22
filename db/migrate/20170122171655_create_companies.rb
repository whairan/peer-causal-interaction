class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :url, :default => nil
      t.references :stock, foreign_key: true
      t.text :about, :default => nil
      t.text :address, :default => nil

      t.timestamps
    end
  end
end
