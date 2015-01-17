# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete.all

User.create!(email: "luke@luke.com", password: "password", first_name: "Luke", last_name: "Grayland")
User.create!(email: "andres@andres.com", password: "password", first_name: "Andres", last_name: "Idontknow")
User.create!(email: "neil@neil.com", password: "password", first_name: "Neil", last_name: "Crosbourne")

Group.delete.all

Group.create!(name: "House share", description: "A group for a house share of 3 people")
Group.create!(name: "House share 2", description: "A group for a flat share of 2 people")