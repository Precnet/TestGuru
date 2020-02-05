class AddRepliesNullRestrictions < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:replies, :body, false)
    change_column_null(:replies, :question, false)
    change_column_null(:users, :name, false)
    change_column_null(:categories, :title, false)
  end
end
