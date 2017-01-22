class CreateDrugDiseases < ActiveRecord::Migration[5.0]
  def change
    create_table :drug_diseases do |t|
      t.references :drug, foreign_key: true
      t.references :disease, foreign_key: true

      t.timestamps
    end
  end
end
