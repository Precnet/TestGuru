class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests, primary_key: :test_id do |t|
      t.string :title
      t.integer :category_id
      t.integer :level

      t.timestamps
    end

    add_index :tests, :test_id
    # add_reference(:categories, :category_id, foreign_key: true)
  end
end
