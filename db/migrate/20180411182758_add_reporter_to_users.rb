class AddReporterToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :reporter, :boolean, default: false
    add_column :users, :reviewer, :boolean, default: false
    remove_column :users, :supervisor_role
    remove_column :users, :user_role
  end
end
