class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.primary_key :cat_id
      t.string :title

      t.timestamps
    end
  end
end
