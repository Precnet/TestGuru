class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :title
      t.integer :level

      t.timestamps
    end

    add_index :tests, :level
  end
end
