class AddDiseaseToTrial < ActiveRecord::Migration[5.0]
  def change
    add_reference :trials, :disease, foreign_key: true
  end
end
