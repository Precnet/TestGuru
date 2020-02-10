class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.string :test_status

      t.timestamps
    end

    add_index :user_profiles, :test_status
    add_reference(:user_profiles, :test, null: false, foreign_key: true)
    add_reference(:user_profiles, :user, null: false, foreign_key: true)
  end
end
