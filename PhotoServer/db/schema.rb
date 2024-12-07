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

ActiveRecord::Schema[8.0].define(version: 2024_11_22_202534) do
  create_table "Comments", primary_key: "commentID", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.timestamp "date", default: -> { "CURRENT_TIMESTAMP" }
    t.string "text", limit: 250
    t.integer "photoID"
    t.integer "shootID"
    t.integer "userID"
    t.index ["commentID"], name: "commentID", unique: true
    t.index ["photoID"], name: "photoID"
    t.index ["shootID"], name: "shootID"
    t.index ["userID"], name: "userID"
  end

  create_table "Photos", primary_key: "photoID", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "fileName", limit: 50
    t.integer "shootID"
    t.index ["photoID"], name: "photoID", unique: true
    t.index ["shootID"], name: "shootID"
  end

  create_table "Shoots", primary_key: "shootID", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 150
    t.date "date"
    t.integer "userID"
    t.index ["shootID"], name: "shootID", unique: true
    t.index ["userID"], name: "userID"
  end

  create_table "Users", primary_key: "userID", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "email", limit: 100
    t.index ["userID"], name: "userID", unique: true
  end

  add_foreign_key "Comments", "Photos", column: "photoID", primary_key: "photoID", name: "comments_ibfk_1"
  add_foreign_key "Comments", "Shoots", column: "shootID", primary_key: "shootID", name: "comments_ibfk_2"
  add_foreign_key "Comments", "Users", column: "userID", primary_key: "userID", name: "comments_ibfk_3"
  add_foreign_key "Photos", "Shoots", column: "shootID", primary_key: "shootID", name: "photos_ibfk_1"
  add_foreign_key "Shoots", "Users", column: "userID", primary_key: "userID", name: "shoots_ibfk_1"
end
