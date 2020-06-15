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

ActiveRecord::Schema.define(version: 2020_06_15_175502) do

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.date "date"
    t.time "time"
    t.string "resort"
    t.string "pass"
    t.string "VenMo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "riders", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.date "date"
    t.time "time"
    t.string "resort"
    t.string "pass"
    t.string "VenMo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rides", force: :cascade do |t|
    t.integer "Rider_id", null: false
    t.integer "Driver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Driver_id"], name: "index_rides_on_Driver_id"
    t.index ["Rider_id"], name: "index_rides_on_Rider_id"
  end

  add_foreign_key "rides", "Drivers"
  add_foreign_key "rides", "Riders"
end
