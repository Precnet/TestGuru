class AddQuestionsRefToTests < ActiveRecord::Migration[6.0]
    def change
    add_reference :questions, :tests, null: false, foreign_key: true
  end
end
