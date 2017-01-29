class AddTrialIdToPhases < ActiveRecord::Migration[5.0]
  def change
    add_reference :phases, :trial, foreign_key: true
  end
end
