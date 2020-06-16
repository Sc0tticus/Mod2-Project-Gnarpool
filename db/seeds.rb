Ride.destroy_all

Driver.destroy_all
Rider.destroy_all

driver1 = Driver.create(name: "Jordan", phone: "3031112222", email: "jordan303@gmail.com", date: nil, time: nil, resort: "Loveland", pass: "Ikon", VenMo: "Jordan13")
driver2 = Driver.create(name: "Ahmed", phone: "3031112223", email: "ahmed@gmail.com", date: nil, time: nil, resort: "Breckenridge", pass: "Epic", VenMo: "Ahmed1")


rider1 = Rider.create(name: "Scott", phone: "3031112222", email: "ssinger303@gmail.com", date: nil, time: nil, resort: "Loveland", pass: "Ikon", VenMo: "Scott12")
rider2 = Rider.create(name: "Kyle", phone: "3031112224", email: "kyle@gmail.com", date: nil, time: nil, resort: "Breckenridge", pass: "Epic", VenMo: "Kyle1")

ride1 = Ride.create(Rider: rider1, Driver: driver1)
ride2 = Ride.create(Rider: rider2, Driver: driver2)



