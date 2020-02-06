class AddIndexToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_index :answers, :is_correct
  end
end
