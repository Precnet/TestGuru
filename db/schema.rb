# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", primary_key: "cat_id", id: :serial, force: :cascade do |t|
    t.string "title", limit: 50
  end

  create_table "questions", id: :serial, force: :cascade do |t|
    t.string "body", limit: 100
    t.integer "test"
  end

  create_table "tests", primary_key: "test_id", id: :serial, force: :cascade do |t|
    t.string "title", limit: 50
    t.integer "category"
    t.integer "level"
  end

  add_foreign_key "questions", "tests", column: "test", primary_key: "test_id", name: "questions_test_fkey"
  add_foreign_key "tests", "categories", column: "category", primary_key: "cat_id", name: "tests_category_fkey"
end