class AddQuestionsFieldsNullConstraits < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:questions, :title, false)
    change_column_null(:questions, :test, false)
  end
end