class CreateDrugs < ActiveRecord::Migration[5.0]
  def change
    create_table :drugs do |t|
      t.string :name
      t.text :about, :default => nil

      t.timestamps
    end
  end
end
