class RemovePhaseIdFromTrials < ActiveRecord::Migration[5.0]
  def change
  	remove_column :trials, :phase_id
  end
end
