class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.primary_key :id
      t.string :title
      t.integer :test

      t.timestamps
    end
  end
end
