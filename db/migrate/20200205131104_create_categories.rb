class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories, primary_key: :category_id do |t|
      t.string :title

      t.timestamps
    end

    add_index :categories, :category_id
  end
end
