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

ActiveRecord::Schema.define(version: 2020_02_06_073753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", primary_key: "answer_id", force: :cascade do |t|
    t.string "body", null: false
    t.integer "question_id", null: false
    t.boolean "is_correct", default: false
    t.index ["answer_id"], name: "index_answers_on_answer_id"
  end

  create_table "categories", primary_key: "category_id", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_categories_on_category_id"
  end

  create_table "questions", primary_key: "question_id", force: :cascade do |t|
    t.string "title", null: false
    t.integer "test_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_questions_on_question_id"
  end

  create_table "tests", primary_key: "test_id", force: :cascade do |t|
    t.string "title", null: false
    t.integer "category_id", null: false
    t.integer "level", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["test_id"], name: "index_tests_on_test_id"
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_users_on_user_id"
  end

end
