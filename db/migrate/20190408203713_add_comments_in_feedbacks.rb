class AddCommentsInFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :comments, :text, default: nil
  end
end
