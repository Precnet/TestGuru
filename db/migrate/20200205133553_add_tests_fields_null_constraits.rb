class AddTestsFieldsNullConstraits < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:tests, :title, false)
    # change_column_null(:tests, :category_id, false)
    change_column_null(:tests, :level, false)
  end
end
