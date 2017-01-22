class CreatePhases < ActiveRecord::Migration[5.0]
  def change
    create_table :phases do |t|
      t.string :name
      t.references :status, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.text :about, :default => nil

      t.timestamps
    end
  end
end
