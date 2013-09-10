# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
kevin = Person.create( { first_name: "Kevin", last_name: "VanderLugt", phone: "111-222-3333"})
kevin.addresses.create( { street_address: "111 Not My Address", city: "Seattle", state:"WA", zip: 11223} )
kevin.addresses.create( { street_address: "No second house for me", city: "Seattle", state:"WA", zip: 11223} )