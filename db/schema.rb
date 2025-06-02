# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_06_02_105956) do
  create_table "fish", force: :cascade do |t|
    t.string "name"
    t.string "fish_description"
    t.string "color"
    t.string "sex"
    t.float "length"
    t.float "altitude"
    t.float "longitude"
    t.integer "user_id", null: false
    t.boolean "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_fish_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "status"
    t.datetime "created_date"
    t.integer "fish_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fish_id"], name: "index_matches_on_fish_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.boolean "read_status"
    t.datetime "date_created"
    t.integer "match_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_messages_on_match_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "score"
    t.text "comment"
    t.integer "user_id", null: false
    t.integer "match_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_reviews_on_match_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.text "user_bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fish", "users"
  add_foreign_key "matches", "fish"
  add_foreign_key "matches", "users"
  add_foreign_key "messages", "matches"
  add_foreign_key "messages", "users"
  add_foreign_key "reviews", "matches"
  add_foreign_key "reviews", "users"
end
