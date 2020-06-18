ActiveRecord::Schema.define(version: 2020_06_15_175502) do

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "time"
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
    t.datetime "time"
    t.string "resort"
    t.string "pass"
    t.string "VenMo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rides", force: :cascade do |t|
    t.integer "rider_id", null: false
    t.integer "driver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driver_id"], name: "index_rides_on_driver_id"
    t.index ["rider_id"], name: "index_rides_on_rider_id"
  end

  add_foreign_key "rides", "drivers"
  add_foreign_key "rides", "riders"
end
