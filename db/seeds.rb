# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.destroy_all

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


Admin.create(admins)
