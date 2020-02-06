class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :body
      t.integer :question
      t.boolean :is_correct
    end
  end
end
