# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
Group.delete_all
Bill.delete_all
BillType.delete_all
Proportion.delete_all


User.create!(email: "luke@luke.com", password: "password", first_name: "Luke", last_name: "Grayland")
User.create!(email: "andres@andres.com", password: "password", first_name: "Andres", last_name: "Idontknow")
User.create!(email: "neil@neil.com", password: "password", first_name: "Neil", last_name: "Crosbourne")

Group.create!(name: "House share", description: "A group for a house share of 3 people")
Group.create!(name: "House share 2", description: "A group for a flat share of 2 people")

inet = Bill.create!(name: "Internet", amount: 40, deadline: "2015.2.15")
inet_type = BillType.create!(name: "Interet")
inet_pr1 = Proportion.create!(percentage: 50)
inet_pr2 = Proportion.create!(percentage: 50)

inet_type.bills.push(inet)
inet_type.proportions.push(inet_pr1, inet_pr2)

tv = Bill.create!(name: "TV", amount: 24, deadline: "2015.2.15")
tv_type = BillType.create!(name: "TV")
tv_pr1 = Proportion.create!(percentage: 25)
tv_pr2 = Proportion.create!(percentage: 25)
tv_pr3 = Proportion.create!(percentage: 25)
tv_pr4 = Proportion.create!(percentage: 25)

tv_type.bills.push(tv)
tv_type.proportions.push(tv_pr1, tv_pr2, tv_pr3, tv_pr4)


