Ride.destroy_all

Driver.destroy_all
Rider.destroy_all

driver1 = Driver.create(
    name: "Jordan", 
    phone: "3031112222", 
    email: "jordan303@gmail.com", 
    time: DateTime.new(2020, 6, 16,3,30,0),
    resort: "Loveland", 
    pass: "Ikon", 
    VenMo: "Jordan13"
)
driver2 = Driver.create(
    name: "Ahmed",
    phone: "3031112223",
    email: "ahmed@gmail.com",
    time: DateTime.new(2020, 6, 17,7,5,0),
    resort: "Breckenridge",
    pass: "Epic", 
    VenMo: "Ahmed1"
)


rider1 = Rider.create(
    name: "Scott",
    phone: "3031112222", 
    email: "ssinger303@gmail.com", 
    time: DateTime.new(2020, 6, 18,8,45,0),
    resort: "Loveland", 
    pass: "Ikon", 
    VenMo: "Scott12"
)
rider2 = Rider.create(
    name: "Kyle", 
    phone: "3031112224", 
    email: "kyle@gmail.com", 
    time: DateTime.new(2020, 6, 19,10,45,0),
    resort: "Breckenridge", 
    pass: "Epic", 
    VenMo: "Kyle1"
)

ride1 = Ride.create(
    rider: rider1,
    driver: driver1
)
ride2 = Ride.create(
    rider: rider2, 
    driver: driver2
)



