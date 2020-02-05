class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.string :body
      t.integer :question
      t.boolean :is_correct

      t.timestamps
    end
  end
end
