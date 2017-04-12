# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.destroy_all
Print.destroy_all
Pin.destroy_all

admins = [
  {
    username: "leann",
    email: "leann@fgw.com",
    password: "fgwfgw"
  },
  {
    username: "matt",
    email: "matt@fgw.com",
    password: "fgwfgw"
  },
  {
    username: "lee",
    email: "lee@fgw.com",
    password: "fgwfgw"
  },
  {
    username: "robbie",
    email: "robbie@fgw.com",
    password: "fgwfgw"
  },
  {
    username: "walt",
    email: "walt@fgw.com",
    password: "fgwfgw"
  },
  {
    username: "will",
    email: "will@fgw.com",
    password: "fgwfgw"
  },
]


prints = [
  {
    name: "Amoeba Records",
    quantity: 200,
    order_state: 0,
    contact_email: "a@r.com",
    contact_phone: "415-555-5555",
  },
  {
    name: "Gratten Elementary",
    quantity: 300,
    order_state: 0,
    contact_email: "g@e.edu",
    contact_phone: "415 424 2424",
  },
  {
    name: "Advantage Robotics",
    quantity: 80,
    order_state: 0,
    contact_email: "a@r.com",
    contact_phone: "510 677 7766",
  },
  {
    name: "Belles & Chimes",
    quantity: 25,
    order_state: 0,
    contact_email: "b@c.edu",
    contact_phone: "510 222 2222",
  },
  {
    name: "Drake",
    quantity: 3,
    order_state: 0,
    contact_email: "dr@ke.com",
    contact_phone: "000 000 0000",
  },
  {
    name: "Anamanaguchi",
    quantity: 3000,
    order_state: 0,
    contact_email: "hikaru@miku.com",
    contact_phone: "222-222-2222",
  },
  {
    name: "Bowl'd Acai",
    quantity: 25,
    order_state: 0,
    contact_email: "b@a.com",
    contact_phone: "444-4444-4444",
  },
  {
    name: "Bowl'd Acai",
    quantity: 25,
    order_state: 0,
    contact_email: "b@a.com",
    contact_phone: "888-888-8888",
  },
  {
    name: "Alameda Pinball Museum",
    quantity: 500,
    order_state: 0,
    contact_email: "alameda@pins.com",
    contact_phone: "777 777 7777",
  },
  {
    name: "Stripe",
    quantity: 250,
    order_state: 0,
    contact_email: "stripe@tech.com",
    contact_phone: "555-555-5555",
  },
  {
    name: "Jon Slater",
    quantity: 5,
    order_state: 0,
    contact_email: "j@s.com",
    contact_phone: "999-999-9999",
  }

]


Admin.create(admins)
Print.create(prints)

puts "Seeded the Crew of The Watch!"
puts "Seeded sample print info!"
puts "Deleted Pins - run $ rake pins"
