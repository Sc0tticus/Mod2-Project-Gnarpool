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
