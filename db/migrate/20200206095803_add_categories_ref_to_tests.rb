class AddCategoriesRefToTests < ActiveRecord::Migration[6.0]
  def change
    add_reference :tests, :categories, null: false, foreign_key: true
  end
end
