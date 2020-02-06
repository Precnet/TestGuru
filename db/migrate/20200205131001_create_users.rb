class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, primary_key: :user_id do |t|
      t.string :name

      t.timestamps
    end

    add_index :users, :user_id
  end
end
