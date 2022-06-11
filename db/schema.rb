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

ActiveRecord::Schema[7.0].define(version: 2022_06_11_165408) do
  create_table "clients", force: :cascade do |t|
    t.integer "personals_id"
    t.integer "personals_id_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personals_id_id"], name: "index_clients_on_personals_id_id"
  end

  create_table "employees", force: :cascade do |t|
    t.integer "personals_id"
    t.integer "user_datum_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_datum_id"], name: "index_employees_on_user_datum_id"
  end

  create_table "malfunctions", force: :cascade do |t|
    t.date "date"
    t.time "time_from"
    t.time "time_to"
    t.string "comment"
    t.integer "track_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["track_id"], name: "index_malfunctions_on_track_id"
  end

  create_table "price_lists", force: :cascade do |t|
    t.integer "price"
    t.string "item_type"
    t.string "weekday"
    t.time "time_from"
    t.time "time_to"
    t.boolean "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date "date"
    t.time "time_from"
    t.time "time_to"
    t.integer "price_list_id", null: false
    t.integer "track_id", null: false
    t.integer "shoe_id"
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_reservations_on_client_id"
    t.index ["price_list_id"], name: "index_reservations_on_price_list_id"
    t.index ["shoe_id"], name: "index_reservations_on_shoe_id"
    t.index ["track_id"], name: "index_reservations_on_track_id"
  end

  create_table "shoes", force: :cascade do |t|
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.boolean "error"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_data", force: :cascade do |t|
    t.integer "personals_id"
    t.string "first_name"
    t.string "last_name"
    t.string "login"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "token"
    t.index ["login"], name: "index_user_data_on_login", unique: true
    t.index ["token"], name: "index_user_data_on_token"
  end

  add_foreign_key "clients", "personals_ids"
  add_foreign_key "employees", "user_data"
  add_foreign_key "malfunctions", "tracks"
  add_foreign_key "reservations", "clients"
  add_foreign_key "reservations", "price_lists"
  add_foreign_key "reservations", "shoes"
  add_foreign_key "reservations", "tracks"
end
