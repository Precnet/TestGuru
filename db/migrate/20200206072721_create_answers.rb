class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers, primary_key: :answer_id do |t|
      t.string :body
      t.integer :question_id
      t.boolean :is_correct
    end

    add_index :answers, :answer_id
  end
end
