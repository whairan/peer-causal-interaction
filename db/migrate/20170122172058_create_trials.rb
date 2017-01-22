class CreateTrials < ActiveRecord::Migration[5.0]
  def change
    create_table :trials do |t|
      t.references :phase, foreign_key: true
      t.references :drug, foreign_key: true
      t.text :gov_url, :default => nil
      t.references :company, foreign_key: true
      t.text :about, :default => nil

      t.timestamps
    end
  end
end
