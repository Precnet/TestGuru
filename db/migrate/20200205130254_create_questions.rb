class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions, primary_key: :question_id do |t|
      t.string :title
      t.integer :test_id

      t.timestamps
    end

    add_index :questions, :question_id
  end
end
