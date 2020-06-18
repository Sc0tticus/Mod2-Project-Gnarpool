Ride.destroy_all

Driver.destroy_all
Rider.destroy_all

### List of Drivers
driver1 = Driver.create(
    name: "Jordan Buysse", 
    phone: "3031112222", 
    email: "jordan303@gmail.com", 
    time: DateTime.new(2020, 6, 16,3,30,0),
    resort: "Loveland", 
    pass: "Ikon", 
    VenMo: "Jordan13"
)

driver2 = Driver.create(
    name: "Ahmed Gaber",
    phone: "3031112223",
    email: "ahmed@gmail.com",
    time: DateTime.new(2020, 6, 17,7,5,0),
    resort: "Breckenridge",
    pass: "Epic", 
    VenMo: "Ahmed1"
)

driver3 = Driver.create(
    name: "Jesse Pope",
    phone: "3031012203",
    email: "jesse@gmail.com",
    time: DateTime.new(2020, 6, 18,6,0,0),
    resort: "Steamboat",
    pass: "Ikon", 
    VenMo: "Jesse2020"
)

driver4 = Driver.create(
    name: "Bryce Kennedy",
    phone: "3039998888",
    email: "Bryce@gmail.com",
    time: DateTime.new(2020, 6, 18,5,3,0),
    resort: "Copper Mountain",
    pass: "Ikon", 
    VenMo: "BryceTheBaker99"
)

driver5 = Driver.create(
    name: "Warren Miller",
    phone: "3039998888",
    email: "warrenmiller@gmail.com",
    time: DateTime.new(2020, 6, 18,5,3,0),
    resort: "Crested Butte",
    pass: "Epic", 
    VenMo: "BryceTheBaker99"
)

#### List of Riders 
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

rider3 = Rider.create(
    name: "Austin", 
    phone: "303123456", 
    email: "austin@gmail.com", 
    time: DateTime.new(2020, 6, 20,10,45,0),
    resort: "Steamboat", 
    pass: "Ikon", 
    VenMo: "AustingTheDJ303"
)

rider4 = Rider.create(
    name: "Haley", 
    phone: "3031234567", 
    email: "haley@gmail.com", 
    time: DateTime.new(2020, 6, 20,10,45,0),
    resort: "Copper Mountain", 
    pass: "Ikon", 
    VenMo: "Haley2020"
)

rider5 = Rider.create(
    name: "Ashley", 
    phone: "3031234568", 
    email: "ashley@gmail.com", 
    time: DateTime.new(2020, 6, 20,4,45,0),
    resort: "Crested Butte", 
    pass: "Ikon", 
    VenMo: "Haley2020"
)
### List of Rides
ride1 = Ride.create(
    rider: rider1,
    driver: driver1
)
ride2 = Ride.create(
    rider: rider2, 
    driver: driver2
)

ride3 = Ride.create(
    rider: rider3, 
    driver: driver3
)

ride4 = Ride.create(
    rider: rider1, 
    driver: driver3
)

ride5 = Ride.create(
    rider: rider2, 
    driver: driver3
)

ride5 = Ride.create(
    rider: rider3, 
    driver: driver4
)

ride6 = Ride.create(
    rider: rider3, 
    driver: driver5
)

ride7 = Ride.create(
    rider: rider4, 
    driver: driver4
)

ride8 = Ride.create(
    rider: rider4, 
    driver: driver5
)

ride9 = Ride.create(
    rider: rider5, 
    driver: driver5
)

ride10 = Ride.create(
    rider: rider2, 
    driver: driver4
)



