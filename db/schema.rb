# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160922175428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bibs", force: :cascade do |t|
    t.integer  "race_id"
    t.integer  "user_id"
    t.integer  "bought_price"
    t.integer  "selling_price"
    t.string   "sale_reason"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["race_id"], name: "index_bibs_on_race_id", using: :btree
    t.index ["user_id"], name: "index_bibs_on_user_id", using: :btree
  end

  create_table "favorite_races", force: :cascade do |t|
    t.integer  "race_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_favorite_races_on_race_id", using: :btree
    t.index ["user_id"], name: "index_favorite_races_on_user_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_messages_on_order_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "bib_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bib_id"], name: "index_orders_on_bib_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.integer  "race_distance"
    t.string   "race_type"
    t.string   "label"
    t.integer  "price"
    t.string   "adress"
    t.date     "date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "content"
    t.integer  "rating"
    t.integer  "race_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_reviews_on_race_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "adress"
    t.string   "gender"
    t.string   "work_place"
    t.date     "birthday"
    t.integer  "age"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bibs", "races"
  add_foreign_key "bibs", "users"
  add_foreign_key "favorite_races", "races"
  add_foreign_key "favorite_races", "users"
  add_foreign_key "messages", "orders"
  add_foreign_key "messages", "users"
  add_foreign_key "orders", "bibs"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "races"
  add_foreign_key "reviews", "users"
end
