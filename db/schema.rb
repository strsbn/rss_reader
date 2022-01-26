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

ActiveRecord::Schema.define(version: 2022_01_25_124736) do

  create_table "feeds", charset: "utf8mb4", force: :cascade do |t|
    t.string "title", null: false
    t.string "endpoint", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rss_items", charset: "utf8mb4", force: :cascade do |t|
    t.string "title", null: false
    t.string "link", null: false
    t.text "description"
    t.text "subject"
    t.datetime "pubdate", null: false
    t.bigint "feed_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feed_id"], name: "index_rss_items_on_feed_id"
  end

  add_foreign_key "rss_items", "feeds"
end
