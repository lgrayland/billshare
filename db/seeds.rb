# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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

