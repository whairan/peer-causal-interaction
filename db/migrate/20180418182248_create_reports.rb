class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.references :user, foreign_key: true
      t.integer :attendance
      t.integer :assignments
      t.integer :participation
      t.integer :sleep
      t.integer :exercise
      t.integer :meals
      t.references :feedback, foreign_key: true

      t.timestamps
    end
  end
end
