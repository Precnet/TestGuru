class AddRepliesIsCorrectDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:replies, :is_correct, from: nil, to: FALSE)
  end
end
