Ride.destroy_all

Driver.destroy_all
Rider.destroy_all

driver1 = Driver.create(name: "Jordan", phone: "3031112222", email: "jordan303@gmail.com", date: nil, time: nil, resort: "Loveland", pass: "Ikon", VenMo: "Jordan13")

rider1 = Rider.create(name: "Scott", phone: "3031112222", email: "ssinger303@gmail.com", date: nil, time: nil, resort: "Loveland", pass: "Ikon", VenMo: "Scott12")

ride1 = Ride.create(Rider_id: rider1, Driver_id: driver1)


# create_table "rides", force: :cascade do |t|
#   t.integer "Rider_id", null: false
#   t.integer "Driver_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["Driver_id"], name: "index_rides_on_Driver_id"
#   t.index ["Rider_id"], name: "index_rides_on_Rider_id"
# end

# add_foreign_key "rides", "Drivers"
# add_foreign_key "rides", "Riders"

# #t.index ["Driver_id"], name: "index_rides_on_Driver_id"
# #t.index ["Rider_id"], name: "index_rides_on_Rider_id"